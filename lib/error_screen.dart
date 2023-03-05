import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:tsr_lsp/style.dart';

import 'package:tsr_lsp/splash_screen.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  items = [];
                  datas = [];
                });
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                    (Route<dynamic> route) => false);
              },
              child: SvgPicture.asset(
                LogoTSR_notext,
                width: MediaQuery.of(context).size.width * 10 / 100,
                height: MediaQuery.of(context).size.height * 10 / 100,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              child: AutoSizeText(
                "TENSORACT",
                style: boldPCTextStyle,
                minFontSize: 10,
                maxLines: 1,
              ),
              onTap: () => {
                setState(() {
                  items = [];
                  datas = [];
                }),
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                    (Route<dynamic> route) => false),
              },
            )
          ],
        ),
        elevation: 1.0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                NotFound,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
