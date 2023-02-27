import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:tsr_lsp/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => new SplashScreen()),
                    (Route<dynamic> route) => false);
              },
              child: SvgPicture(
                AssetBytesLoader(LogoTSR_notext_precompile),
                width: MediaQuery.of(context).size.width * 10 / 100,
                height: MediaQuery.of(context).size.height * 10 / 100,
              ),
            ),
            GestureDetector(
              child: Text("TENSORACT", style: boldPCTextStyle),
              onTap: () => {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => new SplashScreen()),
                    (Route<dynamic> route) => false),
              },
            )
          ],
        ),
        elevation: 1.0,
        backgroundColor: lightblueColor,
      ),
      body: const BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 5 / 100,
          left: MediaQuery.of(context).size.width * 5 / 100,
          right: MediaQuery.of(context).size.width * 5 / 100),
      width: double.maxFinite,
      height: double.maxFinite,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Danh sách port đã sử dụng: ", style: mediumPCTextStylebl),
          ],
        ),
      ),
    );
  }
}
