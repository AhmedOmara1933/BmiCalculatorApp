
import 'package:bmicalculator_project/modules/bmiHomePage.dart';
import 'package:bmicalculator_project/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create:(context) => AppCubit())
        ],
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xff0a0e20),
            appBarTheme: const AppBarTheme(color: Color(0xff0a0e20),),
          ),
          debugShowCheckedModeBanner: false,
          home:  BmiScreen(),
        ),
      ),
    );
  }
}
