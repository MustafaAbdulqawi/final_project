import 'package:final_project/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../widgets/default_material_button.dart';
import '../style/colors.dart';

class SignUpSuccessNotification extends StatelessWidget {
  const SignUpSuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/Pattern.svg",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  "assets/co.svg",
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 2.h, bottom: 1.4.h),
                    child: DefaultText(
                      text: "Congrats!",
                      textColor: firstButtonGreen,
                      weight: FontWeight.bold,
                      textSize: 23.sp,
                    ),
                  ),
                  DefaultText(
                    text: "Your Profile Is Ready To Use!",
                    weight: FontWeight.bold,
                    textSize: 18.sp,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(bottom: 4.h),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultMaterialButton(
                    height: 7.8.h,
                    width: 38.w,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, screens.homeLayout, (route) => false);
                    },
                    backgroundColor: secondButtonGreen,
                    child: DefaultText(
                      text: "Try Order",
                      weight: FontWeight.bold,
                      textColor: Colors.white,
                      textSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
