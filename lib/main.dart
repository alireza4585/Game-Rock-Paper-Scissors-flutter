import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      verticalDirection: VerticalDirection.up,
      children: [
        SizedBox(width: double.infinity),
        Image(image: AssetImage('images/1.png')),
        TextButton(
          onPressed: () {},
          child: Text(
            'شروع بازی',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          style: TextButton.styleFrom(minimumSize: Size(double.infinity, 10)),
        ),
        Image(image: AssetImage('images/2.png'))
      ],
    );
  }
}
