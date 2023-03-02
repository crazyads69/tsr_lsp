import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tsr_lsp/style.dart';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/port_model.dart';
import 'package:tsr_lsp/splash_screen.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:tsr_lsp/dio_get.dart';

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
                    MaterialPageRoute(builder: (context) => new SplashScreen()),
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
              child: Text("TENSORACT", style: boldPCTextStyle),
              onTap: () => {
                setState(() {
                  items = [];
                  datas = [];
                }),
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => new SplashScreen()),
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
