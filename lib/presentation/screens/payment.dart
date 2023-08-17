import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_text.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                            start: 4.h, top: 4.h),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                                height: 7.h, "assets/Icon Back.svg"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 9.w, top: 3.h),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: DefaultText(
                                text: " Confirm Order",
                                weight: FontWeight.bold,
                                textSize: 23.sp,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/Deliver Location232323.svg",
                          ),
                          SvgPicture.asset(
                            "assets/Payment Method4545.svg",
                          ),

                          SvgPicture.asset(
                            "assets/Price Info.svg",
                          ),

                        ],
                      ),
                    ],
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
        ],
      ),

    );
  }
}
