import 'package:bloc_new_version_example/bloc/counter_bloc.dart';
import 'package:bloc_new_version_example/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'BLoC New Version Example!',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
