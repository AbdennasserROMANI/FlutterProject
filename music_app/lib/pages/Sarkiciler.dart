import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'Albums.dart';
import 'Gridler.dart';
import 'Lists.dart';
import 'DataTheme.dart';
import 'SplashScreen.dart';

class Sarkiciler extends StatefulWidget {
  String bartext;
  List<albumlerL> mualbum;
  Sarkiciler({required this.bartext, required this.mualbum});

  @override
  State<Sarkiciler> createState() => _SarkicilerState();
}

class _SarkicilerState extends State<Sarkiciler> {

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
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: (albummm == 2) ? GridS22(widget.mualbum) : GridS33(widget.mualbum),
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

GridS22(List<albumlerL> mualbum) {
  return Scaffold(
    body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.85,
        ),
        itemCount: mualbum.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: Container(
                //height: 180,
                //width: 180,
                child: Grid3(
                  isim: mualbum[index].isim,
                  resim: mualbum[index].resim,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Albums(
                          bartext: mualbum[index].isim,
                          musarki: mualbum[index].sarki)),
                );
              });
        }),
  );
}

GridS33(List<albumlerL> mualbum) {
  return Scaffold(
    body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8,
        ),
        itemCount: mualbum.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: Container(
                //height: 180,
                //width: 180,
                child: Grid3(
                  isim: mualbum[index].isim,
                  resim: mualbum[index].resim,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Albums(
                          bartext: mualbum[index].isim,
                          musarki: mualbum[index].sarki)),
                );
              });
        }),
  );

}

