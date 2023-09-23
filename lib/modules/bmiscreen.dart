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
  double height=140;
  int age=20;
  int weight=70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
                     color: ismale?Colors.blue:Colors.grey[400],
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
                    color:!ismale?Colors.blue:Colors.grey[400],
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
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0)),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: GoogleFonts.acme(
                          fontSize: 35.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
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
                              color: Colors.black),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Slider(
                      min: 100,
                      max: 220,
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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 50.0, right: 50.0),
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0)),
              child: MaterialButton(
                onPressed: () {},
                child:  Text(
                  'Calculate',
                  style: GoogleFonts.acme(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
