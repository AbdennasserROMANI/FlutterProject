import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'Gridler.dart';
import 'Lists.dart';
import 'DataTheme.dart';
import 'Sarkiciler.dart';
import 'SplashScreen.dart';

class Katego extends StatefulWidget {
  String bartext;
  List<sarkicilarL> musarki;
  Katego({required this.bartext, required this.musarki});

  @override
  State<Katego> createState() => _KategoState();
}

class _KategoState extends State<Katego> {

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
        body: (sarkiciii == 2) ? GridK22(widget.musarki) : GridK33(widget.musarki),
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

GridK22(List<sarkicilarL> musarki) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: musarki.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: Container(
              width: 180.0,
              height: 180.0,
              child: Grid2(
                isim: musarki[index].isim,
                resim: musarki[index].resim,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sarkiciler(
                        bartext: musarki[index].isim,
                        mualbum: musarki[index].album)),
              );
            });
      });
}

GridK33(List<sarkicilarL> musarki) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: musarki.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: Container(
              width: 180.0,
              height: 180.0,
              child: Grid2(
                isim: musarki[index].isim,
                resim: musarki[index].resim,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sarkiciler(
                        bartext: musarki[index].isim,
                        mualbum: musarki[index].album)),
              );
            });
      });
}
