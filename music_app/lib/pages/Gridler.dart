import 'package:flutter/material.dart';
import 'package:ringtone_set/ringtone_set.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Lists.dart';
import 'SplashScreen.dart';

class Grid1 extends StatelessWidget {
  final String isim, resim;

  Grid1({required this.isim, required this.resim});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                child: Image.asset(
                  resim,
                ),
              ),
              //Text(isim,style: const TextStyle(fontSize: 40),),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid2 extends StatelessWidget {
  final String isim, resim;

  Grid2({required this.isim, required this.resim});
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          color: Colors.orange,
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                child: Image.asset(resim)),
            Text(
              isim,
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}

class Grid3 extends StatelessWidget {
  final String isim, resim;

  Grid3({required this.isim, required this.resim});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        color: Colors.orange,
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 18.0 / 18.0,
            child: Image(
              image: NetworkImage(resim),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 5.0,
                bottom: 5.0,
              ),
              child: Text(
                isim,
                style: const TextStyle(fontSize: 10),
              )),
        ],
      ),
    );
  }
}

class Grid5 extends StatefulWidget {
  final String isim;
  int index;
  int id;
  String url;
  Grid5(
      {required this.isim,
      required this.index,
      required this.id,
      required this.url});

  @override
  State<Grid5> createState() => _Grid5State();
}

class _Grid5State extends State<Grid5> {
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
    int id = widget.id;
    return Container(
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
                widget.isim,
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
                        title: Text(isFavo[id - 1]
                            ? "favorilerden kaldir"
                            : "favorilere ekle"),
                        trailing: Icon(isFavo[id - 1]
                            ? Icons.favorite
                            : Icons.favorite_border),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'sonory',
                      child: ListTile(
                        title: Text("your sonory"),
                        trailing: Icon(Icons.phonelink_ring_rounded),
                      ),
                    ),
                  ];
                },
                onSelected: (String value) {
                  if (value == 'add favo') {
                    setState(() {
                      isFavo[id - 1] = !isFavo[id - 1];
                    });
                    setFavorite(id - 1);
                  } else if (value == 'sonory') {
                    RingtoneSet.setRingtoneFromNetwork(widget.url);
                  }
                },
              ))),
    );
  }
}
