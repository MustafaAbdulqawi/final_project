import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;

import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class ViaMethod extends StatefulWidget {
  const ViaMethod({super.key});

  @override
  State<ViaMethod> createState() => _ViaMethodState();
}

class _ViaMethodState extends State<ViaMethod> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                            text: "Forgot password?",
                            weight: FontWeight.bold,
                            textSize: 26.sp,

                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 3.h, end: 7.w),
                            child: const DefaultText(
                              text:
                              "Select which contact details should we use to reset your password",
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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:  EdgeInsetsDirectional.only(top: 2.h,start: 2.w,end: 2.w),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      width: double.infinity,
                      height: 11.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 6.w,end: 4.w),
                            child: SvgPicture.asset(
                              "assets/Message34.svg",
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const DefaultText(
                                  text: "Via sms:",
                              ),
                              SvgPicture.asset(
                                "assets/Frame 4.svg",
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        width: double.infinity,
                        height: 11.h,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(start: 6.w,end: 4.w),
                              child: SvgPicture.asset(
                                "assets/Email.svg",
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const DefaultText(
                                  text: "Via email::",
                                ),
                                SvgPicture.asset(
                                  "assets/Frame 4334.svg",
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
              // SvgPicture.asset(
              //   "assets/Pin Logo.svg",
              // ),

            ],
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(top: 30.h),
            child: DefaultMaterialButton(
              height: 7.8.h,
              width: 38.w,
              onPressed: () {
                Navigator.pushReplacementNamed(context, screens.password);
              },
              backgroundColor: secondButtonGreen,
              child: DefaultText(
                text: "Next",
                weight: FontWeight.bold,
                textColor: Colors.white,
                textSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
