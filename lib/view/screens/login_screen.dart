import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Eddling'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(100, 83, 148, 1),
        ),
        body: Neumorphic(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color.fromRGBO(240, 219, 255, 1)),
            child: ListView(
              shrinkWrap: true,
              children: [
                _mobile(),
                _or(),
               _social(),
              ],
            ),
          ),
        ),
      ),
    );
  }

 Widget _mobile() {
    return Card(
      margin: EdgeInsets.all(20),
      color: Color.fromRGBO(240, 219, 255, 1),
      child: Column(
        children: [
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
                color: Color.fromRGBO(240, 219, 255, 1),
                shape: NeumorphicShape.flat),
            child: TextField(
              cursorColor: Color.fromRGBO(100, 83, 148, 1),
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                  hintText: 'Enter Mobile Number',
                  hintStyle: TextStyle(fontSize: 20)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.centerRight,
            child: NeumorphicButton(
              onPressed: () {
                print("Continue");
              },
              style: NeumorphicStyle(
                color: Color.fromRGBO(240, 219, 255, 1),
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.all(Radius.circular(10))),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.navigate_next_rounded,
                    color: Color.fromRGBO(100, 83, 148, 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
 }

  Widget _or() {
    return Center(
      child: Neumorphic(
        padding: EdgeInsets.all(20),
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(50)),
          depth: 8,
          lightSource: LightSource.topLeft,
          color: Color.fromRGBO(240, 219, 255, 1),
        ),
        child: Text(
          'Or',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Widget _social() {
    return  Container(
      width: MediaQuery.of(context).size.width / 2,
      alignment: Alignment.center,
      child: NeumorphicButton(
        onPressed: () {
          print("Continue");
        },
        style: NeumorphicStyle(
          color: Color.fromRGBO(240, 219, 255, 1),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(Radius.circular(10))),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Continue Using Google",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.navigate_next_rounded,
              color: Color.fromRGBO(100, 83, 148, 1),
            ),
          ],
        ),
      ),
    );
  }
}
