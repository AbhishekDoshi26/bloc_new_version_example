part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class InitialCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  final int counter;
  IncrementCounterEvent({required this.counter});
}

class DecrementCounterEvent extends CounterEvent {
  final int counter;
  DecrementCounterEvent({required this.counter});
}

class ResetCounterEvent extends CounterEvent {
  ResetCounterEvent();
}
