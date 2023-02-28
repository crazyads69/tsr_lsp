import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tsr_lsp/style.dart';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/port_model.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

List items = [];
List<UsagedPort> datas = [];

class SplashScreenState extends State<SplashScreen> {
// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/mock_port_data.json');
    final data = await json.decode(response);
    setState(() {
      items = data["list"];
    });
    items.forEach((element) {
      datas.add(UsagedPort.fromJson(element));
    });
    datas.sort(((a, b) => a.port.compareTo(b.port)));
    /* for (int i = 0; i < _datas.length; i++) {
      print(_datas[i].name);
      print(_datas[i].port);
      print(_datas[i].protocol);
      print(_datas[i].alias);
      print(_datas[i].description);
    } */
  }

  @override
  void initState() {
    super.initState();
    readJson();
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
