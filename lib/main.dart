import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:udemy_app_conversor_api/pages/home_page.dart';

Uri request = Uri.parse("https://api.hgbrasil.com/finance?key=7369764a");

void main() async {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber),
        )),
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}
