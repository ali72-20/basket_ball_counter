import 'package:basket_barr/cubit/CounterCubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewModel {

  int getTeamACounter(BuildContext context){
    return BlocProvider.of<CounterCubit>(context).teamA.counter;
  }

  int getTeamBCounter(BuildContext context){
    return BlocProvider.of<CounterCubit>(context).teamB.counter;
  }

  Increment(BuildContext context,Team team, int buttonValue) {
    BlocProvider.of<CounterCubit>(context).Increment(team,buttonValue);
  }

  Reset(BuildContext context) {
    BlocProvider.of<CounterCubit>(context).Reset();
  }

}
sealed class Team{
 int counter = 0;
}

class TeamA extends Team{}
class TeamB extends Team{}
