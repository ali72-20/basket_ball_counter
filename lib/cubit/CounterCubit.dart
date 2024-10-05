import 'package:flutter_bloc/flutter_bloc.dart';
import '../IncrementValue/view_model.dart';
import 'CounterState.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(InitialState());

  TeamA teamA = TeamA();
  TeamB teamB = TeamB();

  Increment(Team team, int buttonValue) {
    switch (team) {
      case TeamA():
        teamA.counter+= buttonValue;
        emit(IncrementAState());
        break;
      case TeamB():
        teamB.counter+= buttonValue;
        emit(IncrementBState());
        break;
    }
  }

  Reset() {
    teamA.counter = 0;
    teamB.counter = 0;
    emit(ResetState());
  }
}