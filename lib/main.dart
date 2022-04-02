import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const gameapp());
}

class gameapp extends StatefulWidget {
  const gameapp({Key? key}) : super(key: key);

  @override
  State<gameapp> createState() => _gameappState();
}

class _gameappState extends State<gameapp> {
  int a() {
    return Random().nextInt(3) + 1;
  }

  int b() {
    return Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: _Appbar(),
        body: colum(),
      ),
    );
  }

  PreferredSizeWidget _Appbar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.red,
      title: Text('سنگ  کاغذ  قیچی'),
    );
  }

  Widget colum() {
    int one = a();
    int tow = b();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      verticalDirection: VerticalDirection.up,
      children: [
        Image(image: AssetImage('images/$tow.png'), height: 100),
        TextButton(
          onPressed: () {
            setState(() {
              a();
              b();
            });
          },
          child: Text(
            'شروع بازی',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          style: TextButton.styleFrom(minimumSize: Size(double.infinity, 10)),
        ),
        Image(image: AssetImage('images/$one.png'), height: 100)
      ],
    );
  }
}
