import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';

class UsagedPort {
  UsagedPort({
    required this.name,
    required this.port,
    required this.protocol,
    required this.alias,
    required this.description,
  });

  final String name;
  final String port;
  final String protocol;
  final String alias;
  final String description;

  factory UsagedPort.fromRawJson(String str) =>
      UsagedPort.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UsagedPort.fromJson(Map<String, dynamic> json) => UsagedPort(
        name: json["name"],
        port: json["port"],
        protocol: json["protocol"],
        alias: json["alias"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "port": port,
        "protocol": protocol,
        "alias": alias,
        "description": description,
      };
}


