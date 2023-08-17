import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class VoucherPromo extends StatefulWidget {
  const VoucherPromo({super.key});

  @override
  State<VoucherPromo> createState() => _VoucherPromoState();
}

class _VoucherPromoState extends State<VoucherPromo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
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
                          "assets/Voucher 1343434.svg",
                        ),
                        SvgPicture.asset(
                          "assets/Voucher 2454545.svg",
                        ),

                        Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(top: 26.h,end: 7.w),
                            child: DefaultMaterialButton(
                              height: 7.8.h,
                              onPressed: () {},
                              backgroundColor: secondButtonGreen,
                              child: DefaultText(
                                text: "Check Out",
                                weight: FontWeight.bold,
                                textColor: Colors.white,
                                textSize: 18.sp,
                              ),
                            ),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
