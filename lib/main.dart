import 'package:flutter/material.dart';
import 'package:start_fluutter/HomeScreen.dart';
import 'package:start_fluutter/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

   @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: 
      LoginScreen(),
    );
    
  }
}
