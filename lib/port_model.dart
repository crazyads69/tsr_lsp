import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';

class UsagedPort {
  UsagedPort({
    required this.program_name,
    required this.local_port,
    required this.foreign_port,
    required this.proto,
    required this.state,
  });

  final String program_name;
  final String local_port;
  final String foreign_port;
  String proto;
  final String state;

  factory UsagedPort.fromRawJson(String str) =>
      UsagedPort.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UsagedPort.fromJson(Map<String, dynamic> json) => UsagedPort(
        program_name: json["program_name"],
        local_port: json["local_port"],
        foreign_port: json["foreign_port"],
        proto: json["proto"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "program_name": program_name,
        "local_port": local_port,
        "foreign_port": foreign_port,
        "proto": proto,
        "state": state,
      };
}
