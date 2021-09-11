import 'package:bloc_new_version_example/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<CounterBloc>().add(InitialCounterEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        if (state is CounterDataState)
          return Scaffold(
            appBar: AppBar(
              title: Text('BLoC New Version!'),
            ),
            bottomNavigationBar: Container(
              color: Colors.red,
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => context.read<CounterBloc>().add(IncrementCounterEvent(counter: state.counter)),
                    icon: Icon(Icons.add),
                    splashRadius: 0.1,
                  ),
                  IconButton(
                    onPressed: () => context.read<CounterBloc>().add(DecrementCounterEvent(counter: state.counter)),
                    icon: Icon(Icons.remove),
                    splashRadius: 0.1,
                  ),
                  IconButton(
                    onPressed: () => context.read<CounterBloc>().add(ResetCounterEvent()),
                    icon: Icon(Icons.restart_alt),
                    splashRadius: 0.1,
                  ),
                ],
              ),
            ),
            body: Center(
              child: Text(
                state.counter.toString(),
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          );
        return Container();
      },
    );
  }
}
