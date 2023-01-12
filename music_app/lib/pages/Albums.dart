import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'Gridler.dart';
import 'Lists.dart';
import 'MediaPlayer.dart';
import 'DataTheme.dart';
import 'SplashScreen.dart';

class Albums extends StatefulWidget {
  String bartext;
  List<sarkilarL> musarki;
  Albums({required this.bartext, required this.musarki});

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {

  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async {

        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if(!isDeviceConnected && isAlertSet == false){

          showDialogBox();
          setState(() => isAlertSet = true);

        }
      });

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.bartext)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ),
        body: ListView.builder(
            itemCount: widget.musarki.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Grid5(
                      isim: widget.musarki[index].isim,
                      index: widget.musarki[index].id - 1,
                      id: widget.musarki[index].id,
                      url: widget.musarki[index].url,
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MediaPlayer(musarki: widget.musarki, index: index)),
                  );
                },
              );
            }),
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
