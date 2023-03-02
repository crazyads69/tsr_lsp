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

  String program_name = " ";
  String local_port = " ";
  String foreign_port = " ";
  String proto = " ";
  String state = " ";

  factory UsagedPort.fromRawJson(String str) =>
      UsagedPort.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UsagedPort.fromJson(Map<String, dynamic> json) => UsagedPort(
        program_name: json["program_name"] ?? "USED",
        local_port: json["local_port"] ?? "USED",
        foreign_port: json["foreign_port"] ?? "USED",
        proto: json["proto"] ?? "USED",
        state: json["state"] ?? "USED",
      );

  Map<String, dynamic> toJson() => {
        "program_name": program_name,
        "local_port": local_port,
        "foreign_port": foreign_port,
        "proto": proto,
        "state": state,
      };
}
