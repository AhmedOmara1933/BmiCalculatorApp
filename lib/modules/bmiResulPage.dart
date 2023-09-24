import 'package:bmicalculator_project/modules/bmiHomePage.dart';
import 'package:bmicalculator_project/shared/components/components.dart';
import 'package:bmicalculator_project/shared/cubit/cubit.dart';
import 'package:bmicalculator_project/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiResult extends StatelessWidget {
  final double result;

   BmiResult({required this.result, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit=AppCubit.get(context);

        cubit.cases(result: result);
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
                              '${cubit.text}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  color:cubit.textColor),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 100.0, bottom: 50.0),
                              child: Text(
                                '${result.ceilToDouble()}',
                                style: const TextStyle(
                                    fontSize: 100.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              '${cubit.tooText}',
                              style: const TextStyle(
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
                          builder: (context) => BmiScreen(),
                        ));
                  })
            ],
          ),
        );
      },
    );
  }
}
