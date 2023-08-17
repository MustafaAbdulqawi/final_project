import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                          height: 7.h, "assets/Icon Back.svg"),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.only(top: 4.h,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: "Voucher Promo",
                            weight: FontWeight.bold,
                            textSize: 26.sp,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 3.h, end: 13.w),

                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/Success Notification.svg",
                    ),
                    SvgPicture.asset(
                      "assets/Topup Notification.svg",
                    ),
                    SvgPicture.asset(
                      "assets/Cancel Notification.svg",
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
            ],
          ),
        ],
      ),
    );
  }
}
