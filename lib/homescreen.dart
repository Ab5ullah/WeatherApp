import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/images.dart';
import 'package:weather_app/string.dart';

import 'const/color.dart';

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          "${index + 1} AM".text.gray200.make(),
                          Image.asset(
                            "assets/weather/09n.png",
                            width: 80,
                          ),
                          "38$degree".text.white.make(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              10.heightBox,
              const Divider(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Next 7 Days".text.semiBold.size(16).make(),
                  TextButton(
                    onPressed: () {},
                    child: "View All".text.make(),
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (
                  context,
                  int index,
                ) {
                  var day = DateFormat("EEEE")
                      .format(DateTime.now().add(Duration(days: index + 1)));
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 12),
                      child: Row(
                        children: [
                          day.text.semiBold.make(),
                          TextButton.icon(
                            onPressed: null,
                            icon: Image.asset(
                              "assets/weather/50n.png",
                              width: 40,
                            ),
                            label: "26$degree".text.make(),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
