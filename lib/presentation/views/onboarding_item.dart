import 'package:final_project/data/models/onboarding_model.dart';
import 'package:final_project/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_material_button.dart';
import '../style/colors.dart';

class OnBoardingItem extends StatefulWidget {
  const OnBoardingItem({super.key, required this.model});
  final OnBoardingModel model;

  @override
  State<OnBoardingItem> createState() => _OnBoardingItemState();
}

class _OnBoardingItemState extends State<OnBoardingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
          ),
          child: Image.asset(
            widget.model.image,
          ),
        ),
        DefaultText(
          text: widget.model.title,
          textSize: 28.sp,
          weight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: 4.h,
            end: 15.w,
            start: 15.w,
            bottom: 4.h,
          ),
          child: Center(
            child: DefaultText(
              text: widget.model.text,
              textAlign: TextAlign.center,
            ),
          ),
        ),

      ],
    );
  }
}
