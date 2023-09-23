
import 'package:bmicalculator_project/modules/bmiScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff0a0e20),
          appBarTheme: AppBarTheme(color: Color(0xff0a0e20),),
        ),
        debugShowCheckedModeBanner: false,
        home: BmiScreen(),
      ),
    );
  }
}
