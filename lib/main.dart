
import 'package:flutter/material.dart';
import 'package:furniture_app/View/Screens/HomeScreen.dart';

void main()
{
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
