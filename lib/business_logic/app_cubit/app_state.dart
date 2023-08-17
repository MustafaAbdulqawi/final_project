part of 'app_cubit.dart';

abstract class AppState {}

class AppInitial extends AppState {}
class ChangedState extends AppState {}
class AppChangeBottomNavBarState extends AppState {}
class SearchState extends AppState {}
class ShowAndHidePasswordSignUp extends AppState {}
class ShowAndHidePasswordFirstReset extends AppState {}
class ShowAndHidePasswordSecondResetEnd extends AppState {}
//start (first)
class FirstPlusOrder extends AppState {}
class FirstMinOrder extends AppState {}
//end (first)
//
//start(second)
class SecondPlusOrder extends AppState {}
class SecondMinOrder extends AppState {}
//end(second)
//
//start(third)
class ThirdPlusOrder extends AppState {}
class ThirdMinOrder extends AppState {}
//end(third)
