import 'dart:math';
import 'package:bmicalculator_project/modules/bmiResulPage.dart';
import 'package:bmicalculator_project/shared/components/components.dart';
import 'package:bmicalculator_project/shared/cubit/cubit.dart';
import 'package:bmicalculator_project/shared/cubit/states.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'BMI Calculator',
              style: GoogleFonts.acme(fontSize: 30.0, letterSpacing: 1.0),
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
                        color: cubit.ismale
                            ? Colors.blueGrey
                            : const Color(0xff111327),
                        onTap: () {
                        cubit.isMaleChanged(value:true);
                        },
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      IsmaleCard(
                        text: 'Female',
                        image: 'images/Venus_symbol.svg.png',
                        color: cubit.ismale
                            ? const Color(0xff111327)
                            : Colors.blueGrey,
                        onTap: () {
                          cubit.isMaleChanged(value:false);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff111327),
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
                              '${cubit.height.round()}',
                              style: const TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                        Slider(
                          min: 100,
                          max: 230,
                          activeColor: Colors.white,
                          thumbColor: const Color(0xfff50d56),
                          inactiveColor: Colors.white,
                          value: cubit.height,
                          onChanged: (value) {
                            cubit.isSliderChanged(value: value);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      DefaultCard(
                        text: 'Age',
                        plus: () {
                          cubit.isCounterAgePlus();
                        },
                        minus: () {
                          cubit.isCounterAgeMinus();
                        },
                        value: cubit.age,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      DefaultCard(
                        text: 'weight',
                        plus: () {
                          cubit.isCounterWeightPlus();
                        },
                        minus: () {
                          cubit.isCounterWeightMinus();
                        },
                        value: cubit.weight,
                      )
                    ],
                  ),
                ),
              ),
              DefaultBottom(
                text: 'Calculate',
                onPressed: () {
                  double result = cubit.weight / pow(cubit.height / 100, 2);
                  if (kDebugMode) {
                    print(result.round());
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResult(
                          result: result,
                        ),
                      ));
                },
              )
            ],
          ),
        );
      },
    );
  }
}
