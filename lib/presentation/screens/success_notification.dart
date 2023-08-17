import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Stack(
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
                          text: "Password reset successful",
                          weight: FontWeight.bold,
                          textSize: 18.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 3.8.h),
                        child: DefaultMaterialButton(
                          height: 7.8.h,
                          width: 38.w,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          backgroundColor: secondButtonGreen,
                          child: DefaultText(
                            text: "Back",
                            weight: FontWeight.bold,
                            textColor: Colors.white,
                            textSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
