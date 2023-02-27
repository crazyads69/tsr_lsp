import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 3000), () {
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
            type: SpinKitWaveType.start,
            itemCount: 5,
            color: Colors.black,
            size: 60,
            duration: const Duration(milliseconds: 3000),
          )
        ],
      ),
    );
  }
}
