import 'package:flutter/material.dart';
import 'package:task/layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const Directionality(
        textDirection: TextDirection.rtl,
        child: HomeLayout(),
      )
    );
  }
}
