import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/home_page.dart';
import 'package:mydemo4/Pages/use_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id : (context)=> HomePage(),
        UsePage.id : (context)=> UsePage(inName: "Flutter",inNum: 22)
      },

    );
  }
}
