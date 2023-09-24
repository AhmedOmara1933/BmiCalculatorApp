import 'package:bmicalculator_project/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool ismale = true;
  double height = 180;
  int age = 28;
  int weight = 60;

  void isMaleChanged({required bool value}) {
    ismale = value;
    emit(ChangeIsmaleValue());
  }

  void isSliderChanged({required double value}) {
    height = value;
    emit(ChangeSliderValue());
  }

  void isCounterAgePlus() {
    age++;
    emit(CounterAgePlus());
  }

  void isCounterWeightPlus() {
    weight++;
    emit(CounterAgePlus());
  }

  void isCounterAgeMinus() {
    age--;
    emit(CounterAgeMinus());
  }

  void isCounterWeightMinus() {
    weight--;
    emit(CounterAgeMinus());
  }

  String? text;
  String? tooText;
  Color? textColor;

  void cases({required double result}){

    if (result < 18.5) {
      text = 'Underweight';
      tooText = 'you have a Underweight body weight.'
          'Good Jop!  ';
      textColor = Colors.green;
    } else if (result >= 18.5 && result <= 24.9) {
      text = 'Normal';
      tooText = 'you have a normal body weight.'
          'Good Jop!  ';
      textColor = Colors.yellow;
    } else if (result >= 25 && result <= 29.9) {
      text = 'overWeight';
      tooText = 'you have a overWeight body weight.'
          'Do exercise!  ';
      textColor = Colors.grey;
    } else if (result >= 30 && result <= 49.9) {
      text = 'Obese';
      tooText = 'ohhhhhhh!! you are too overWeight. '
          'Right yourself';
      textColor = Colors.black;
    } else {
      text = 'Result out of range';
      textColor = Colors.red;
    }
  }

}
