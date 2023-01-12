import 'package:flutter/material.dart';
import 'package:music_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ringtone_set/ringtone_set.dart';

import 'Lists.dart';
import 'MediaPlayer.dart';
import 'DataTheme.dart';
import 'SplashScreen.dart';

class favoriler extends StatefulWidget {
  const favoriler({Key? key}) : super(key: key);

  @override
  State<favoriler> createState() => _favorilerState();
}

class _favorilerState extends State<favoriler> {
  Future<void> setFavorite(int index) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (isFavo[index] == false) {
        prefs.setBool(index.toString(), false);
      } else {
        prefs.setBool(index.toString(), true);
      }
      Favoriler = [];
      for (int i = 0; i < Sarkilar.length; i++) {
        isFavo.add(prefs.getBool(i.toString()) ?? false);
        if (isFavo[i]) {
          Favoriler.add(sarkilarL(
              id: Sarkilar[i].id,
              isim: Sarkilar[i].isim,
              url: Sarkilar[i].url,
              aid: Sarkilar[i].aid));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Uyarı"),
                content: Text("çıkmak istiyor musunuz ?"),
                actions: [
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text("Evet")),
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text("Exit")),
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: MaterialApp(
        theme: dark ? darkTheme : lightTheme,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Favoriler")),
          ),
          body: Container(
            margin: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: Favoriler.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 2.0,
                      bottom: 2.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      color: Colors.orange,
                    ),
                    child: ListTileTheme(
                        child: ListTile(
                            title: Text(
                              Favoriler[index].isim,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            trailing: PopupMenuButton(
                              icon: const Icon(Icons.more_vert),
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    value: 'add favo',
                                    child: ListTile(
                                      title: Text(
                                          isFavo[Favoriler[index].id - 1]
                                              ? "favorilerden kaldir"
                                              : "favorilere ekle"),
                                      trailing: Icon(
                                          isFavo[Favoriler[index].id - 1]
                                              ? Icons.favorite
                                              : Icons.favorite_border),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    value: 'sonory',
                                    child: ListTile(
                                      title: Text("your sonory"),
                                      trailing:
                                          Icon(Icons.phonelink_ring_rounded),
                                    ),
                                  ),
                                ];
                              },
                              onSelected: (String value) {
                                if (value == 'add favo') {
                                  setState(() {
                                    isFavo[Favoriler[index].id - 1] =
                                        !isFavo[Favoriler[index].id - 1];
                                  });
                                  setFavorite(Favoriler[index].id - 1);
                                } else if (value == 'sonory') {
                                  RingtoneSet.setRingtoneFromNetwork(
                                      Favoriler[index].url);
                                }
                              },
                            ))),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MediaPlayer(musarki: Favoriler, index: index)),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
