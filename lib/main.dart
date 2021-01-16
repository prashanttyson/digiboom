import 'package:eddling/view/utils/AppRoute.dart';
import 'package:eddling/view/utils/Constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( fontFamily: 'CooperHewitt'
        //fontFamily: DefaultTextStyle.of(context).style.fontFamily
      ),
      darkTheme: ThemeData(

          textTheme: Theme.of(context)
              .textTheme
              .apply( fontFamily: 'CooperHewitt'
            //fontFamily: DefaultTextStyle.of(context).style.fontFamily,
          )),
      initialRoute: '/',
      routes: getAppRoute(),
      navigatorKey: Constants.navigatorKey,
    );
  }
}



