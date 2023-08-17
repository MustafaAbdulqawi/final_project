import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';
class RateRestaurant extends StatefulWidget {
  const RateRestaurant({super.key});

  @override
  State<RateRestaurant> createState() => _RateRestaurantState();
}

class _RateRestaurantState extends State<RateRestaurant> {
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
                  "assets/Image455667676.svg",
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 2.h,
                    ),
                    child: DefaultText(
                      text: "Thank You!",
                      weight: FontWeight.bold,
                      textSize: 23.sp,
                    ),
                  ),
                  DefaultText(
                    text: "Enjoy Your Meal",
                    weight: FontWeight.bold,
                    textSize: 23.sp,
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional.only(top: 2.h, bottom: 3.h),
                    child: DefaultText(
                      text: "Please rate your Restaurant",
                      textSize: 9.sp,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/Star Icon.svg",
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom:3.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 3.h),
                  child: TextFormField(
                    // controller: searchController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          size: 25.sp,
                          color: secondButtonGreen,
                        ),
                      ),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                      label: const Text(
                        "Leave feedback",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 3.w),
                      child: DefaultMaterialButton(
                        height: 7.8.h,
                        width: 70.w,
                        onPressed: () {},
                        backgroundColor: secondButtonGreen,
                        child: DefaultText(
                          text: "Submit",
                          weight: FontWeight.bold,
                          textColor: Colors.white,
                          textSize: 18.sp,
                        ),
                      ),
                    ),
                    DefaultMaterialButton(
                      height: 7.8.h,
                      width: 25.w,
                      onPressed: () {},
                      backgroundColor: white,
                      child: DefaultText(
                        text: "Skip",
                        weight: FontWeight.bold,
                        textColor: secondButtonGreen,
                        textSize: 14.sp,
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
