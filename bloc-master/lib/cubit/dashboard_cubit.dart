import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/arithimetic_cubit.dart';
import 'package:practice/cubit/counter_cubit.dart';
import 'package:practice/cubit/student_cubit.dart';
import 'package:practice/view/arithimetic_cubit_view.dart';
import 'package:practice/view/counter_cubit_view.dart';
import 'package:practice/view/student_cubit_view.dart';

class DashboardCubit extends Cubit<void> {
  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;

  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
  ) : super(null);

  void openCounterView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const CounterCubitView(),
                )));
  }

  void openArithimeticView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _arithmeticCubit,
                  child: const ArithmeticCubitView(),
                )));
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _studentCubit,
                  child: StudentCubitView(),
                )));
  }
}
