import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text(
              "Bugün Ne Yesem",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Yemeksayfasi()),
    );
  }
}

class Yemeksayfasi extends StatefulWidget {
  Yemeksayfasi({Key? key}) : super(key: key);

  @override
  State<Yemeksayfasi> createState() => _YemeksayfasiState();
}

class _YemeksayfasiState extends State<Yemeksayfasi> {
  var corbano = 1;

  var tatlino = 1;

  var yemekno = 1;

  List<String> Corbaad = [
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Düğün Çorbası",
    "Tavuk Çorbası"
  ];
  List<String> Tatliad = [
    "Burmalı Kadayıf",
    "Baklava",
    "Sütlaç",
    "Dondurma",
    "Pasta"
  ];

  List<String> Yemekad = [
    "Karnıyarık",
    "Mantı",
    "Kuru Fasulye",
    "İçli Köfte",
    "Balık"
  ];
  void Yemekleriyenile() {
    setState(() {
      tatlino = Random().nextInt(5) + 1;
      corbano = Random().nextInt(5) + 1;
      yemekno = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: Yemekleriyenile,
                child: Image.asset("assets/corba_$corbano.jpg")),
          )),
          Text(
            Corbaad[corbano - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 15,
                color: Colors.black,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: Yemekleriyenile,
                child: Image.asset("assets/tatli_$tatlino.jpg")),
          )),
          Text(
            Tatliad[tatlino - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: Yemekleriyenile,
                child: Image.asset("assets/yemek_$yemekno.jpg")),
          )),
          Text(
            Yemekad[yemekno - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 15,
                color: Colors.black,
              )),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: Yemekleriyenile,
                child: Text(
                  "Rastgele Seç",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 15,
              )),
        ],
      ),
    );
  }
}
