import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double kdefaultPaddig = 20;
  Color colorSetter = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Color Filter"),
        ),
        body: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              color: Colors.blue,
              child: ColorFiltered(
                child: Image(image: AssetImage("assets/images/rod-long.jpg")),
                colorFilter: ColorFilter.mode(colorSetter, BlendMode.color),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorSetter = Colors.blue;
                  });
                },
                child: Text("Blue")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorSetter = Colors.red;
                  });
                },
                child: Text("Red")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorSetter = Colors.green;
                  });
                },
                child: Text("Green")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorSetter = Colors.yellow;
                  });
                },
                child: Text("Yellow")),
          ],
        ));
  }
}
