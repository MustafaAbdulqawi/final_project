import 'package:final_project/presentation/screens/call_ringing.dart';
import 'package:final_project/presentation/screens/home.dart';
import 'package:final_project/presentation/screens/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/screens/order_details.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);
  int currentPageIndex = 0;
  bool isLast = true;
  void nextPage(index){
    currentPageIndex =index;
    emit(ChangedState());
  }
  List<Widget> screens = [
    const Home(),
    const CallRinging(),
    const OrderDetails(),
    const Message(),
  ];
  int currentIndex = 0;
  void changeBottom(int index){
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
  IconData  suffixIcon = Icons.visibility;
  bool isHidden = true;
  void showAndHidePassword() {
      if (isHidden) {
        suffixIcon = Icons.visibility_off;
      } else {
        suffixIcon = Icons.visibility;
      }
      isHidden = !isHidden;
      emit(ShowAndHidePasswordSignUp());

  }

  void secondShowAndHidePassword() {
      if (isHidden) {
        suffixIcon = Icons.visibility_off;
      } else {
        suffixIcon = Icons.visibility;
      }
      isHidden = !isHidden;
      emit(ShowAndHidePasswordFirstReset());

  }
  void thirdShowAndHidePassword() {
      if (isHidden) {
        suffixIcon = Icons.visibility_off;
      } else {
        suffixIcon = Icons.visibility;
      }
      isHidden = !isHidden;
      emit(ShowAndHidePasswordSecondResetEnd());

  }
  int one = 0;
  void firstPlusOrder(){
    one++;
    emit(FirstPlusOrder());
  }
  void firstMinOrder(){
    one--;
    emit(FirstMinOrder());
  }
  //
  int second = 0;
  void secondPlusOrder(){
    second++;
    emit(SecondPlusOrder());
  }
  void secondMinOrder(){
    second--;
    emit(SecondMinOrder());
  }
  //
  int third = 0;
  void thirdPlusOrder(){
    third++;
    emit(ThirdPlusOrder());
  }
  void thirdMinOrder(){
    third--;
    emit(ThirdMinOrder());
  }
}
