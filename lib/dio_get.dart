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
import 'package:dio/dio.dart';

final dio=new Dio();
String url = "http";
Response response = Response(requestOptions: RequestOptions());
Future getHttp() async {
  response = await dio.get(url);
}
