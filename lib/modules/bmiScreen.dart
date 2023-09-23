import 'dart:math';

import 'package:bmicalculator_project/modules/bmiResult.dart';
import 'package:bmicalculator_project/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismale = true;
  double height=180;
  int age=28;
  int weight=60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.acme(fontSize: 30.0,letterSpacing: 1.0),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                   IsmaleCard(
                    image: 'images/Mars_symbol.svg.png',
                    text: 'Male',
                     color: ismale?Colors.blueGrey:Color(0xff111327),
                     onTap: (){
                      setState(() {
                        ismale=true;
                      });
                     },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  IsmaleCard(
                    text: 'Female',
                    image: 'images/Venus_symbol.svg.png',
                    color:!ismale?Colors.blueGrey:Color(0xff111327),
                    onTap: (){
                      setState(() {
                        ismale=false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff111327),
                    borderRadius: BorderRadius.circular(10.0)),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: GoogleFonts.acme(
                          fontSize: 20.0,
                          color: Colors.white,
                         ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      min: 100,
                      max: 230,
                      activeColor: Colors.white,
                      thumbColor: Color(0xfff50d56),
                      inactiveColor: Colors.white,

                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height=value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  DefaultCard(
                    text: 'Age',
                    plus:(){
                      setState(() {
                        age++;
                      });
                    },
                    minus:(){
                      setState(() {
                        age--;
                      });
                    },
                    value: age,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  DefaultCard(
                    text: 'weight',
                    plus:(){
                      setState(() {
                        weight++;
                      });
                    },
                    minus:(){
                      setState(() {
                        weight--;
                      });
                    },
                    value: weight,
                  )
                ],
              ),
            ),
          ),
          DefaultBottom(
            text: 'Calculate',
            onPressed: (){
              double result = weight/pow(height / 100, 2);
              print(result.round());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>BmiResult(
                        result:result ,
                    ),
                  ));
            },
          )

        ],
      ),
    );
  }
}
