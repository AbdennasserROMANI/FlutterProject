import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_app/pages/DataTheme.dart';
import 'package:music_app/pages/SplashScreen.dart';
import 'package:music_app/pages/anaMenu.dart';
import 'package:music_app/pages/ayarlar.dart';
import 'package:music_app/pages/favoriler.dart';

import 'firebase_options.dart';

int myIndex = 0;

// function to trigger build when the app is run
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
      theme: dark? darkTheme:lightTheme,
      home: MyApp())); //MaterialApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
  
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myWidgets = const [
    anaMenu(),
    favoriler(),
    ayarlar(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark? darkTheme:lightTheme,
      home: Scaffold(
      body: Center(
        child: myWidgets[myIndex] ,
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoriler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Ayarlar",
          ),
      ],),
    ),
    );
  }
}

