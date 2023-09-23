import 'package:bmicalculator_project/modules/bmiScreen.dart';
import 'package:bmicalculator_project/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiResult extends StatelessWidget {
  final double result;

  BmiResult({required this.result, super.key});

  String? text;
  String? tooText;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    if( result<18.5){
      text = 'Underweight';
      tooText = 'you have a Underweight body weight.'
          'Good Jop!  ';
      textColor = Colors.green;
    }
    else if(result >=18.5 && result<=24.9){
      text = 'Normal';
      tooText = 'you have a normal body weight.'
          'Good Jop!  ';
      textColor = Colors.yellow;
    }
    else if(result >=25 && result<=29.9){
      text = 'overWeight';
      tooText = 'you have a overWeight body weight.'
          'Do exercise!  ';
      textColor = Colors.grey;
    }
    else if(result >=30 && result<=49.9){
      text = 'Obese';
      tooText = 'ohhhhhhh!! you are too overWeight. '
          'Right yourself';
      textColor = Colors.black;
    }
    else {
      text = 'Result out of range';
      textColor = Colors.red;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Result',
                  style: TextStyle(
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                      color: const Color(0xff1d1e32),
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 600.0,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          '$text',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color:textColor),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(top: 100.0, bottom: 50.0),
                          child: Text(
                            '${result.ceilToDouble()}',
                            style: const TextStyle(
                                fontSize: 100.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                         Text(
                          '$tooText',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 1.0),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          DefaultBottom(
              text: 'Re-Calculate',
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BmiScreen(),
                    ));
              })
        ],
      ),
    );
  }
}