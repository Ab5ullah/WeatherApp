import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/string.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateFormat("yMMMMd").format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: date.text.gray700.make(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.light_mode, color: Vx.gray400),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Vx.gray400),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          "LAHORE"
              .text
              .fontFamily("poppins_bold")
              .size(32)
              .letterSpacing(3)
              .make(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/weather/01d.png",
                width: 80,
                height: 80,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "37$degree",
                    style: const TextStyle(
                      color: Vx.gray900,
                      fontFamily: "poppins",
                      fontSize: 64,
                    ),
                  ),
                  TextSpan(
                    text: "Sunny",
                    style: const TextStyle(
                      color: Vx.gray700,
                      letterSpacing: (3),
                      fontFamily: "poppins_light",
                      fontSize: 14,
                    ),
                  )
                ]),
              )
            ],
          )
        ]),
      ),
    );
  }
}
