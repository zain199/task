import 'package:flutter/material.dart';
import 'package:task/layout/view/home_layout.dart';
import 'package:task/shared/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home:const Directionality(
        textDirection: TextDirection.rtl,
        child: HomeLayout(),
      )
    );
  }
}
