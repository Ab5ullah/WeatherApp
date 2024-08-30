import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/images.dart';
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
                  const TextSpan(
                    text: "Sunny",
                    style: TextStyle(
                      color: Vx.gray700,
                      letterSpacing: 3,
                      fontFamily: "poppins_light",
                      fontSize: 14,
                    ),
                  )
                ]),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.expand_less_rounded,
                  color: Vx.gray400,
                ),
                label: "41$degree".text.make(),
              ),
              TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.expand_more_rounded,
                  color: Vx.gray400,
                ),
                label: "26$degree".text.make(),
              )
            ],
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) {
              var iconsList = [clouds, humidity, windspeed];
              var value = ["70%", "40%", "3.5km/h"];
              return Column(
                children: [
                  Image.asset(
                    iconsList[index],
                    width: 60,
                    height: 60,
                  )
                      .box
                      .gray200
                      .padding(const EdgeInsets.all(8))
                      .roundedSM
                      .make(),
                  10.heightBox,
                  value[index].text.gray400.make()
                ],
              );
            }),
          ),
          10.heightBox,
          const Divider(),
          10.heightBox,
        ]),
      ),
    );
  }
}
