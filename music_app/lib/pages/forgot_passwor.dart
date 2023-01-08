import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

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
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Parolanızı mı unuttunuz?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Parolanızı sıfırlamak için size bir bağlantı göndereceğiz.",
                    style: TextStyle(
                      color: Color(0xff8391A1),
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              CustomizedTextfield(
                myController: _emailController,
                hintText: "E-postanızı giriniz",
                isPassword: false,
              ),
              CustomizedButton(
                buttonText: "Kodu gönder",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(68, 8, 8, 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Şifreni hatırladın mı?",
                        style: TextStyle(
                          color: Color(0xff1E232C),
                          fontSize: 15,
                        )),
                    InkWell(
                      onTap: () {},
                      child: const Text("  Giriş yap",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 15,
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
  showDialogBox() => showCupertinoDialog<String>(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
    title: const Text("No Connection"),
    content: const Text("Please check your internet connection"),
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
          child: const Text("OK"))
    ],
  ));
}
