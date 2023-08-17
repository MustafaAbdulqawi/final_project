import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../business_logic/app_cubit/app_cubit.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  late AppCubit cubit;

  @override
  void didChangeDependencies() {
    cubit = AppCubit.get(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              cubit.screens[cubit.currentIndex],
            ],
          ),


          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => cubit.changeBottom(index),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white,
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/Icon Home Active.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/Icon Profile.svg",
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/Icon Cart.svg",
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/Chat23233.svg",
                ),
                label: "",
              ),
            ],
          ),
        );
      },
    );
  }
}
