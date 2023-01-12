import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/main.dart';
import 'package:music_app/pages/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Lists.dart';

int sarkiciii = 2;
int albummm = 2;
List<bool> checked = [true, false, true, false];
List<bool> isFavo = [];
List<sarkilarL> Favoriler = [];

bool dark = false;

class SplashScreen extends StatefulWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getTheme();
    getGrid();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return HomePage();
                  } else {
                    return const WelcomeScreen();
                  }
                },
              ),
            )));
  }

  Future<void> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      dark = (prefs.getBool('dark') ?? false);
    });
  }

  Future<void> getGrid() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      checked[0] = (prefs.getBool('grid0') ?? true);
      checked[1] = (prefs.getBool('grid1') ?? false);
      checked[2] = (prefs.getBool('grid2') ?? true);
      checked[3] = (prefs.getBool('grid3') ?? false);
      (checked[0] == true) ? sarkiciii = 2 : sarkiciii = 3;
      (checked[2] == true) ? albummm = 2 : albummm = 3;
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF8008),
              Color(0xFFCE1010),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Lottie.asset("assets/splash.json", height: 400, width: 400),
                const Text(
                  'Yükleniyor ...',
                  style: TextStyle(
                      fontFamily: 'DynaPuff',
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
            Lottie.asset("assets/Loading.json", width: 80, height: 80)
          ],
        ),
      ),
    );
  }
}
