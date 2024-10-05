import 'package:basket_barr/cubit/CounterCubit.dart';
import 'package:basket_barr/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}


class pointsCounter extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       home: HomeScreen(),
      ),
    );
  }
}
