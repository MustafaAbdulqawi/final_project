import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart'as screens;
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({super.key});

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
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
                            text: "Set Your Location",
                            weight: FontWeight.bold,
                            textSize: 26.sp,

                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 3.h, end: 7.w),
                            child: const DefaultText(
                              text:
                              "This data will be displayed in your account profile for security",
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
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 7.w,vertical: 4.h),
            child: Container(
              height: 20.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.sp),
              ),
              child:  Column(
                children: [
                  Padding(
                    padding:EdgeInsetsDirectional.only(top: 3.h,start: 3.w),
                    child: Row(
                      children: [
                        Padding(
                          padding:EdgeInsetsDirectional.only(end: 3.w),
                          child: SvgPicture.asset(
                            "assets/Pin Logo.svg",
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: DefaultText(
                              text: "Your Location",
                            weight: FontWeight.bold,
                            textSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsetsDirectional.only(start: 3.w,end: 3.w,top: 5.h),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        width: double.infinity,
                        height: 6.8.h,
                        child: Center(
                          child: DefaultText(
                              text: "Set Location",
                            weight: FontWeight.bold,
                            textSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 20.h),
            child: DefaultMaterialButton(
              height: 7.8.h,
              width: 38.w,
              onPressed: () {
                Navigator.pushReplacementNamed(context, screens.signUpSuccessNotification);
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
