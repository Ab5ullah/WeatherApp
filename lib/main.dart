import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/homescreen.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      fontFamily: "poppins",
    ),
    debugShowCheckedModeBanner: false,
    home: const WeatherApp(),
    title: "Weather App",
  ));
}
