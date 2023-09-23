
import 'package:bmicalculator_project/modules/BmiScreen.dart';
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
          scaffoldBackgroundColor: Colors.grey[900],
          appBarTheme: AppBarTheme(color: Colors.grey[900]),
        ),
        debugShowCheckedModeBanner: false,
        home: BmiScreen(),
      ),
    );
  }
}
