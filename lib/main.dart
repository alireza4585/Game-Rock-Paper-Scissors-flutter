import 'package:flutter/material.dart';

void main() {
  runApp(const gameapp());
}

class gameapp extends StatefulWidget {
  const gameapp({Key? key}) : super(key: key);

  @override
  State<gameapp> createState() => _gameappState();
}

int a = 1;
int b = 2;

class _gameappState extends State<gameapp> {
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
        Image(image: AssetImage('images/$a.png')),
        TextButton(
          onPressed: () {
            setState(() {
              a = 2;
              b = 2;
            });
          },
          child: Text(
            'شروع بازی',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          style: TextButton.styleFrom(minimumSize: Size(double.infinity, 10)),
        ),
        Image(image: AssetImage('images/$b.png'))
      ],
    );
  }
}
