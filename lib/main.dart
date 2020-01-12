import 'package:flutter/material.dart';
import 'package:leer_json/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

//aqui solo llamamos al homepage ->