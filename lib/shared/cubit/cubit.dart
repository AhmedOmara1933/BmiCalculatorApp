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

}
