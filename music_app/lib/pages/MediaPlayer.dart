import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'Lists.dart';
import 'DataTheme.dart';
import 'SplashScreen.dart';

import 'globals.dart' as globals;

class MediaPlayer extends StatefulWidget {
  List<sarkilarL> musarki;
  int index;
  MediaPlayer({required this.musarki, required this.index});

  @override
  State<MediaPlayer> createState() => MediaPlayerState();
}

class MediaPlayerState extends State<MediaPlayer> {
  bool isPlaying = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();

    setAudio(widget.musarki[widget.index].url);

    globals.audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    globals.audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    globals.audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    globals.audioPlayer.onPlayerCompletion.listen((finished) {
      setState(() {
        widget.index = (widget.index + 1) % widget.musarki.length;
        setAudio(widget.musarki[widget.index].url);
      });
    });
  }

  Future setAudio(String url) async {
    await globals.audioPlayer.setUrl(url);
    globals.audioPlayer.resume();
  }

  getConnectivity() => subscription = Connectivity()
          .onConnectivityChanged
          .listen((ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox();
          setState(() => isAlertSet = true);
        }
      });

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? darkTheme : lightTheme,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    Albumler[widget.musarki[widget.index].aid - 1].resim,
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover),
              ),
              const SizedBox(height: 32),
              Text(
                widget.musarki[widget.index].isim,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                Albumler[widget.musarki[widget.index].aid - 1].isim,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Slider(
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async {
                    final position = Duration(seconds: value.toInt());
                    await globals.audioPlayer.seek(position);
                    await globals.audioPlayer.resume();
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatTime(position)),
                    Text(formatTime(duration - position))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: const Icon(Icons.skip_previous),
                      iconSize: 30,
                      onPressed: () async {
                        widget.index =
                            (widget.index - 1) % widget.musarki.length;
                        setAudio(widget.musarki[widget.index].url);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow,
                      ),
                      iconSize: 50,
                      onPressed: () async {
                        if (isPlaying) {
                          await globals.audioPlayer.pause();
                        } else {
                          await globals.audioPlayer.resume();
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 28,
                    child: IconButton(
                      icon: const Icon(Icons.skip_next),
                      iconSize: 30,
                      onPressed: () async {
                        widget.index =
                            (widget.index + 1) % widget.musarki.length;
                        setAudio(widget.musarki[widget.index].url);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialogBox() => showCupertinoDialog<String>(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
    title: const Text("Bağlantı yok"),
    content: const Text("Lütfen internet bağlantınızı kontrol edin"),
    actions: <Widget>[
      TextButton(
          onPressed: () async{
            Navigator.pop(context,"Cancel");
            setState(() => isAlertSet = false);
            isDeviceConnected = await InternetConnectionChecker().hasConnection;
            if(!isDeviceConnected){
              showDialogBox();
              setState(() => isAlertSet = true);
            }
          },
          child: const Text("Tamam"))
    ],
  ));
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) [hours, ':'].join(),
    minutes,
    ':',
    seconds
  ].join();
}
