import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

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
        child: Column(children: [
          "Lahore"
              .text
              .fontFamily("poppins_bold")
              .size(32)
              .letterSpacing(3)
              .make()
        ]),
      ),
    );
  }
}
