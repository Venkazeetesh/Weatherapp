import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/hourlyforrecast.dart';
import 'package:weatherapp/secrests.dart';
import 'package:weatherapp/titilecard.dart';
import 'package:weatherapp/weatherforecase.dart';
import 'package:http/http.dart' as http;
class Weatherapp extends StatefulWidget{
  const Weatherapp({super.key});
  @override
  State<Weatherapp> createState()=>_conTent();
}
class _conTent extends State<Weatherapp> {
  double temp = 0;
  @override
  void initState() {
    // getliveforecast();
    super.initState();
  }

  // Future getliveforecast() async {
  //   try {
  //     String india = "London";
  //     final api = await http.get(Uri.parse(
  //         "https://api.openweathermap.org/data/2.5/forecast?q=London&APPID=58e01c6cf57ef66da50086d8cd33ff9b"));
  //     final data = jsonDecode(api.body);
  //     return data;
  //     print("Decoded to maps ");
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather app", style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            print("Clicked");
          }, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(160)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2,),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text("100 K", style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),),
                              const SizedBox(height: 5,),
                              const Icon(
                                Icons.cloud, size: 50, color: Colors.white,),
                              const SizedBox(height: 10,),
                              Text(
                                "cloud", style: const TextStyle(fontSize: 20),),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text("Weather Forecast",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hourlyforecast(
                        time: "00:00", icons: Icons.cloud, value: "27"),
                    SizedBox(width: 5,),
                    Hourlyforecast(
                        time: "01:00", icons: Icons.sunny, value: "30"),
                    SizedBox(width: 5,),
                    Hourlyforecast(
                        time: "02:00", icons: Icons.wind_power, value: "16"),
                    SizedBox(width: 5,),
                    Hourlyforecast(
                        time: "03:00", icons: Icons.cloud_done, value: "40")
                    ,
                    SizedBox(width: 5,),
                    Hourlyforecast(
                        time: "03:00", icons: Icons.cloud_done, value: "40")
                  ], //children
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Addititonal information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              const SizedBox(height: 5,),
              const SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    info2(
                      icon: Icons.water_drop,
                      data: "Humidity",
                      value: "91",
                    ),
                    info2(icon: Icons.air,
                        data: "Windspeed",
                        value: "8.00"),
                    info2(
                      icon: Icons.beach_access,
                      data: "Pressure",
                      value: "7",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}