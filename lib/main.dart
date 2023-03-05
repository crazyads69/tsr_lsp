import 'package:flutter/material.dart';
import 'package:tsr_lsp/splash_screen.dart';
import 'package:tsr_lsp/dio_get.dart';
import 'package:tsr_lsp/disable_page_transition.dart';

void main() async {
  runApp(const MyApp());
  getHttp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Tensoract List Port Server',
      theme: ThemeData(
        pageTransitionsTheme: NoTransitionsOnWeb(),
        applyElevationOverlayColor: true,
        fontFamily: "Roboto",
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
