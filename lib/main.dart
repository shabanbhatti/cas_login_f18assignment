import 'package:cas_login_f18assignment/caslogo&name.dart';
import 'package:cas_login_f18assignment/opacityContainer.dart';
import 'package:cas_login_f18assignment/styleText.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 20,
            actions: const []),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // --------------1st-------------------
              Container(
                  color: Colors.transparent,
                  height: 1000,
                  width: 600,
                  child: casLogoAndNameColumn()),

              // ----------------2nd-----------------

              const OpacityContainer()
            ],
          ),
        ),
      ),
    );
  }
}
