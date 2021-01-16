import 'package:eddling/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

// const home_screen = 'home_screen';
// const enquiry_screen = 'enquiry_screen';


Map<String,WidgetBuilder> getAppRoute(){
  return {
    '/': (BuildContext context) => LoginScreen(),
    // home_screen: (BuildContext context) => HomeScreen(),
    // enquiry_screen: (BuildContext contex)=> EnquiryScreen(),

  };
}