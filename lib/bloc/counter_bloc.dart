import 'package:flutter_bloc/flutter_bloc.dart';
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

  /// This is the old method but you can still use it as it is backward compatible!

  /*@override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is InitialCounterEvent) {
      yield CounterDataState(counter: 0);
    } else if (event is IncrementCounterEvent) {
      yield CounterDataState(counter: event.counter + 1);
    } else if (event is DecrementCounterEvent) {
      yield CounterDataState(counter: (event.counter - 1).toUnsigned(event.counter.bitLength));
    } else if (event is ResetCounterEvent) {
      yield CounterDataState(counter: 0);
    }
  }*/
}
