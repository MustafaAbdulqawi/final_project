import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;

import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 9.h, start: 7.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsetsDirectional.only(top: 8.h, end: 22.w),
                      child: Column(
                        children: [
                          DefaultText(
                            text: "Enter 4-digit Verification code",
                            weight: FontWeight.bold,
                            textSize: 26.sp,

                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 3.h, end: 7.w),
                            child: const DefaultText(
                              text:
                              "Code send to +6282045**** . This code will expired in 01:30",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/ThirdPattern.png",
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 8.h,start: 6.w),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                      height: 7.h, "assets/Icon Back.svg"),
                ),
              ),

            ],
          ),
          InkWell(/////
            onTap: (){},
            child:Padding(
              padding:  EdgeInsets.only(bottom: 22.h),
              child: SvgPicture.asset(
                "assets/Code Box.svg",
              ),
            ),
          ),
          DefaultMaterialButton(
            height: 7.8.h,
            width: 38.w,
            onPressed: () {
              Navigator.pushReplacementNamed(context, screens.viaMethod);
            },
            backgroundColor: secondButtonGreen,
            child: DefaultText(
              text: "Next",
              weight: FontWeight.bold,
              textColor: Colors.white,
              textSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
