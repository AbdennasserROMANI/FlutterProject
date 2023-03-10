import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:music_app/pages/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import 'Albums.dart';

import 'DataTheme.dart';
import 'Gridler.dart';
import 'Katego.dart';
import 'Lists.dart';
import 'MediaPlayer.dart';
import 'Sarkiciler.dart';
import 'SplashScreen.dart';
import 'aboutUs.dart';

class anaMenu extends StatefulWidget {
  const anaMenu({Key? key}) : super(key: key);

  @override
  State<anaMenu> createState() => _anaMenuState();
}

class _anaMenuState extends State<anaMenu> {
  final String? userName = FirebaseAuth.instance.currentUser?.email;

  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
    getTheme();
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

  Future<void> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      dark = (prefs.getBool('dark') ?? false);
    });
  }

  //Incrementing counter after click
  Future<void> setTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('dark', dark);
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
              title: Text("Uyar??"),
              content: Text("????kmak istiyor musunuz ?"),
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
      theme: (dark) ? darkTheme : lightTheme,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Dinle Dinle"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Text(
                    "Ana Menu",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Kategoriler",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Sarkicilar",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Albumler",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Parcalar",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ], //tabs
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/drawer.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                      alignment: Alignment.bottomLeft, child: Text(userName!)),
                ),
                SwitchListTile(
                  //activeTrackColor: Colors.orange,
                  activeColor: Colors.orange,
                  title: const Text('Dark Modu'),
                  value: dark,
                  onChanged: (state) {
                    setState(() {
                      dark = state;
                    });
                    setTheme();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('Hakk??m??zda'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => aboutUs()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_phone),
                  title: const Text('Bize Ula????n'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactUs()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text('Gizlilik Politikas??'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => privacyPolicy()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.outbond),
                  title: const Text('????k???? yap'),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    if (!mounted) return;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WelcomeScreen();
                    }));
                  },
                ),
              ],
            ),
          ), //AppBar
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                Center(
                  child: AnaSayfa(),
                ),
                Center(child: Kategoril()),
                Center(child: Sarkici()),
                Center(child: Album()),
                Center(child: Sarki()),
              ],
            ),
          ),
        ),
      ),
    ),);
  }

  AnaSayfa() {
    return Scaffold(
      body: ListView.builder(
          itemCount: Kategoriler.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Kategoriler[i].isim),
                  ],
                ),
                Container(
                  height: 200.0,
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Kategoriler[i].sarkici.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: Container(
                              width: 180.0,
                              height: 180.0,
                              child: Grid2(
                                isim: Kategoriler[i].sarkici[index].isim,
                                resim: Kategoriler[i].sarkici[index].resim,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context,rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) =>
                                    Sarkiciler(
                                    bartext:
                                    Kategoriler[i].sarkici[index].isim,
                                    mualbum: Kategoriler[i]
                                        .sarkici[index]
                                        .album)),
                              );
                            },
                            );
                      }),
                ),
              ],
            );
          }),
    );
  }

  Kategoril() {
    return Scaffold(
      body: ListView.builder(
          itemCount: Kategoriler.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Container(
                  child: Grid1(
                    isim: Kategoriler[index].isim,
                    resim: Kategoriler[index].resim,
                  ),
                ),
                onTap: () {
                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => Katego(
                            bartext: Kategoriler[index].isim,
                            musarki: Kategoriler[index].sarkici)),
                  );
                });
          }),
    );
  }

  Sarkici() {
    return (sarkiciii == 2) ? Grid22() : Grid33();
  }

  Grid22() {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.85,
          ),
          itemCount: Sarkicilar.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Container(
                  child: Grid2(
                    isim: Sarkicilar[index].isim,
                    resim: Sarkicilar[index].resim,
                  ),
                ),
                onTap: () {
                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => Sarkiciler(
                            bartext: Sarkicilar[index].isim,
                            mualbum: Sarkicilar[index].album)),
                  );
                });
          }),
    );
  }

  Grid33() {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.8,
          ),
          itemCount: Sarkicilar.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Container(
                  child: Grid2(
                    isim: Sarkicilar[index].isim,
                    resim: Sarkicilar[index].resim,
                  ),
                ),
                onTap: () {
                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => Sarkiciler(
                            bartext: Sarkicilar[index].isim,
                            mualbum: Sarkicilar[index].album)),
                  );
                });
          }),
    );
  }

  Album() {
    return (albummm == 2) ? GridA22() : GridA33();
  }

  GridA22() {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.85,
          ),
          itemCount: Albumler.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Container(
                  child: Grid3(
                    isim: Albumler[index].isim,
                    resim: Albumler[index].resim,
                  ),
                ),
                onTap: () {
                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => Albums(
                            bartext: Albumler[index].isim,
                            musarki: Albumler[index].sarki)),
                  );
                });
          }),
    );
  }

  GridA33() {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.82,
          ),
          itemCount: Albumler.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Container(
                  child: Grid3(
                    isim: Albumler[index].isim,
                    resim: Albumler[index].resim,
                  ),
                ),
                onTap: () {
                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => Albums(
                            bartext: Albumler[index].isim,
                            musarki: Albumler[index].sarki)),
                  );
                });
          }),
    );
  }

  Sarki() {
    return Scaffold(
      body: ListView.builder(
          itemCount: Sarkilar.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Grid5(
                    isim: Sarkilar[index].isim,
                    index: Sarkilar[index].id - 1,
                    id: Sarkilar[index].id,
                    url: Sarkilar[index].url),
                onTap: () {

                  Navigator.of(context,rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            MediaPlayer(musarki: Sarkilar, index: index)),
                  );
                });
          }),
    );
  }

  showDialogBox() => showCupertinoDialog<String>(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
    title: const Text("Ba??lant?? yok"),
    content: const Text("L??tfen internet ba??lant??n??z?? kontrol edin"),
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
