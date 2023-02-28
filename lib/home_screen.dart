import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:tsr_lsp/home_screen.dart';
import 'package:tsr_lsp/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:tsr_lsp/splash_screen.dart';
import 'package:data_table_2/data_table_2.dart';

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
                setState(() {
                  items = [];
                  datas = [];
                });
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
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("List Port in-used: ", style: mediumPCTextStylebl),
            Divider(height: 10, color: Colors.black),
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: DataTable2(
                    minWidth: 600,
                    columns: [
                      DataColumn2(
                          label: Center(
                              child: Text("Port", style: boldPCTextStylebl))),
                      DataColumn2(
                          label: Center(
                              child:
                                  Text("Service", style: boldPCTextStylebl))),
                      DataColumn2(
                          label: Center(
                              child:
                                  Text("Protocol", style: boldPCTextStylebl))),
                      DataColumn2(
                          label: Center(
                              child:
                                  Text("Command", style: boldPCTextStylebl))),
                      DataColumn2(
                          label: Center(
                              child: Text("Status", style: boldPCTextStylebl))),
                    ],
                    rows: List<DataRow>.generate(
                        datas.length,
                        (index) => DataRow(
                              cells: [
                                DataCell(Center(
                                    child: Text(datas[index].port,
                                        style: mediumPCTextStylebl))),
                                DataCell(Center(
                                    child: Text(datas[index].name,
                                        style: mediumPCTextStylebl))),
                                DataCell(Center(
                                    child: Text(datas[index].protocol,
                                        style: mediumPCTextStylebl))),
                                DataCell(Center(
                                    child: Text(datas[index].alias,
                                        style: mediumPCTextStylebl))),
                                DataCell(Center(
                                    child: Text("USED",
                                        style: mediumPCTextStylebl)))
                              ],
                            )))),
          ],
        ),
      ),
    );
  }
}
