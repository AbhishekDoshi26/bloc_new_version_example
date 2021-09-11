import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterDataState(counter: 0)) {
    on<InitialCounterEvent>((event, emit) => emit(CounterDataState(counter: 0)));
    on<IncrementCounterEvent>((event, emit) => emit(CounterDataState(counter: event.counter + 1)));
    on<DecrementCounterEvent>(
        (event, emit) => emit(CounterDataState(counter: (event.counter - 1).toUnsigned(event.counter.bitLength))));
    on<ResetCounterEvent>((event, emit) => emit(CounterDataState(counter: 0)));
  }
}
