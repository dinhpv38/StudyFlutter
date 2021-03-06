import '../events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState);

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    print(state);//this is "current view"
    //You must have UI to send Event(by pressing buttons)
    switch(event) {
      case CounterEvent.increment:
        var newState = state + 1;
        yield newState;
        break;
      case CounterEvent.decrement:
        var newState = state - 1;
        yield newState;
        break;
    }
  }
}