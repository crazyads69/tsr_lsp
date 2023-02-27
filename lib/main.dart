import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:tsr_lsp/splash_screen.dart';

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
