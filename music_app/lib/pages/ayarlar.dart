import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'DataTheme.dart';
import 'SplashScreen.dart';
import 'aboutUs.dart';

class ayarlar extends StatefulWidget {
  const ayarlar({Key? key}) : super(key: key);

  @override
  State<ayarlar> createState() => _ayarlarState();
}

class _ayarlarState extends State<ayarlar> {
  Future<void> setTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('dark', dark);
    });
  }

  Future<void> setGrid() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('grid0', checked[0]);
      prefs.setBool('grid1', checked[1]);
      prefs.setBool('grid2', checked[2]);
      prefs.setBool('grid3', checked[3]);
      (checked[0] == true) ? sarkiciii = 2 : sarkiciii = 3;
      (checked[2] == true) ? albummm = 2 : albummm = 3;
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
          title: const Center(child: Text("Dinle Dinle")),
        ),
        body: Column(
          children: [
            Container(
              child: SwitchListTile(
                activeColor: Colors.orange,
                title: const Text(
                  'Dark Modu',
                  style: TextStyle(fontSize: 18),
                ),
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
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Sarkicinin goruntusu",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Text(" 2"),
                  Checkbox(
                    activeColor: Colors.orange,
                    value: checked[0],
                    onChanged: (bool? value) {
                      setState(
                        () {
                          checked[1] = checked[0];
                          checked[0] = value!;
                        },
                      );
                      setGrid();
                    },
                  ),
                  const Text("3"),
                  Checkbox(
                    activeColor: Colors.orange,
                    value: checked[1],
                    onChanged: (bool? value) {
                      setState(
                        () {
                          checked[0] = checked[1];
                          checked[1] = value!;
                        },
                      );
                      setGrid();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Albumlerin goruntusu",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Text(" 2"),
                  Checkbox(
                    activeColor: Colors.orange,
                    value: checked[2],
                    onChanged: (bool? value) {
                      setState(
                        () {
                          checked[3] = checked[2];
                          checked[2] = value!;
                        },
                      );
                      setGrid();
                    },
                  ),
                  const Text("3"),
                  Checkbox(
                    activeColor: Colors.orange,
                    value: checked[3],
                    onChanged: (bool? value) {
                      setState(
                        () {
                          checked[2] = checked[3];
                          checked[3] = value!;
                        },
                      );
                      setGrid();
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: ListTile(
                title: const Text(
                  'Hakkımızda',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => aboutUs()),
                  );
                },
              ),
            ),
            Container(
              child: ListTile(
                title: const Text(
                  'Gizlilik Politikası',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => privacyPolicy()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
