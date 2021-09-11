part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterDataState extends CounterState {
  final int counter;
  CounterDataState({required this.counter});
}
