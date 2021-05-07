import 'package:flutter/material.dart';
import 'package:binary_2_decimal/Homepage.dart';



void main() => runApp(ConverterApp());

class ConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binary to Decimal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      home : Homepage(),
      
    );

      
      
    
  }
}

