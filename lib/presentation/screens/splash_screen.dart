import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:final_project/core/screens.dart' as screens;

import '../../core/my_cache_keys.dart';
import '../../data/data_source/local/my_cache.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.pushNamedAndRemoveUntil(context, screens.signIn, (route) => false);
      // bool isOnBoardingViewed =
      //     MyCache.getBool(key: MyCacheKeys.isOnBoardingViewed);
      // if (isOnBoardingViewed) {
      //   Navigator.pushNamedAndRemoveUntil(
      //       context, screens.signIn, (route) => false);
      // } else {
      //   Navigator.pushNamedAndRemoveUntil(
      //       context, screens.onBoardingScreen, (route) => false);
      // }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/Pattern.svg",
          ),
          Center(
            child: Image.asset(
              "assets/Logo.png",
            ),
          ),
        ],
      ),
    );
  }
}
