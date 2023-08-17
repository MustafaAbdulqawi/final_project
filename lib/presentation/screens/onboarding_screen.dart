import 'package:final_project/business_logic/app_cubit/app_cubit.dart';
import 'package:final_project/presentation/views/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../data/models/onboarding_model.dart';
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';
import 'package:final_project/core/screens.dart' as screens;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late AppCubit cubit;
  @override
  void didChangeDependencies() {
    cubit = AppCubit.get(context);
    super.didChangeDependencies();
  }

  PageController onBoardingPageController = PageController();
  final List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: "assets/Illustartion.png",
      title: "Find your  Comfort Food here",
      text:
          "Here You Can find a chef or dish for every taste and color. Enjoy!",
      bottom: 'Next',
    ),
    OnBoardingModel(
      image: "assets/Illustrationn.png",
      title: "Food Ninja is Where Your Comfort Food Lives",
      text: "Enjoy a fast and smooth food delivery at your doorstep",
      bottom: "Next",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: PageView.builder(
              itemBuilder: (context, index) => OnBoardingItem(
                model: onBoardingList[index],
              ),
              itemCount: onBoardingList.length,
              controller: onBoardingPageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                cubit.nextPage(index);
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 3.h),
            child: DefaultMaterialButton(
              backgroundColor: secondButtonGreen,
              width: 40.w,
              onPressed: () {
                if(cubit.currentPageIndex + 1 == onBoardingList.length){
                  Navigator.pushNamedAndRemoveUntil(context, screens.signIn, (route) => false);
                }
                else {
                  onBoardingPageController.jumpToPage(cubit.currentPageIndex +1);
                }
              },
              child: const DefaultText(
                text: "Next",
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
