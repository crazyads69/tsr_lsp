import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vector_graphics/vector_graphics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tensoract List Port Server',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 2000), () {
      // set your desired delay time here
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new HomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 20 / 100,
          left: MediaQuery.of(context).size.width * 10 / 100,
          right: MediaQuery.of(context).size.width * 10 / 100),
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture(
            AssetBytesLoader(LogoTSR_precompile),
            height: MediaQuery.of(context).size.height * 40 / 100,
            width: MediaQuery.of(context).size.width * 60 / 100,
          ),
          Text("TENSORACT", style: boldPCTextStylebl),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 10 / 100),
          ),
          const SpinKitWave(
            color: Colors.black,
            size: 50,
            duration: const Duration(milliseconds: 2000),
          )
        ],
      ),
    );
  }
}
