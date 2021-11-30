import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double kdefaultPaddig = 20;
  Color colorSetter = Colors.red;

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
            margin: EdgeInsets.all(kdefaultPaddig),
            width: size.width,
            child: Column(
              children: [
                Container(
                  child: ColorFiltered(
                    child: Image(
                      image: AssetImage("assets/images/rod-long.jpg"),
                    ),
                    colorFilter: ColorFilter.mode(colorSetter, BlendMode.color),
                  ),
                ),
                Divider(
                  height: kdefaultPaddig,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        colorSetter = Colors.blue;
                      });
                    },
                    child: Text("change to blue")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        colorSetter = Colors.red;
                      });
                    },
                    child: Text("change to red")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        colorSetter = Colors.yellow;
                      });
                    },
                    child: Text("change to yellow")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
