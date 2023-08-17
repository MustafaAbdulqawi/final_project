import 'package:final_project/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/screens.dart' as screens;
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../style/colors.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({super.key});

  @override
  State<HomeItem> createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 2.h),
            child: Image.asset(
              "assets/Promo Advertising.png",
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 1.h, start: 8.8.w, end: 20.w),
                child: DefaultText(
                  text: "Nearest Restaurant",
                  weight: FontWeight.bold,
                  textSize: 14.sp,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 1.h),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, screens.exploreRestaurant);
                  },
                  child: const DefaultText(
                    text: "View More",
                    textColor: form,
                  ),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/Rectangle 12344.svg",
            height: 25.h,
            width: double.infinity,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 8.8.w),
                child: DefaultText(
                  text: "Popular Menu",
                  weight: FontWeight.bold,
                  textSize: 13.sp,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 37.3.w),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, screens.exploreMenu);
                  },
                  child: const DefaultText(
                    text: "View More",
                    textColor: form,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 3.w, end: 3.w),
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/Photo Menu.svg",
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 6.w, end: 21.w, bottom: 3.h, top: 3.h),
                    child: DefaultText(
                      text: "Green Noddle",
                      textSize: 16.sp,
                      weight: FontWeight.bold,
                    ),
                  ),
                  DefaultText(
                    text: "\$15",
                    textSize: 20.sp,
                    weight: FontWeight.bold,
                    textColor: form,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
