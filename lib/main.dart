import 'package:flutter/material.dart';
import 'package:online_shopping/constant.dart';
import 'package:online_shopping/screens/home/home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
      ),
      home: HomeScreen(),
    );
  }
}
