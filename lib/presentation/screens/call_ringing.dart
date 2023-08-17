import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../business_logic/app_cubit/app_cubit.dart';
import '../../widgets/default_text.dart';
class CallRinging extends StatefulWidget {
  const CallRinging({super.key});

  @override
  State<CallRinging> createState() => _CallRingingState();
}

class _CallRingingState extends State<CallRinging> {
  late AppCubit cubit;
  @override
  void didChangeDependencies() {
    cubit = AppCubit.get(context);
    super.didChangeDependencies();
  }
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
                  "assets/Image494949.svg",
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsetsDirectional.only(top: 2.h, bottom: 1.4.h),
                    child: DefaultText(
                      text: "Courtney Henry",
                      weight: FontWeight.bold,
                      textSize: 23.sp,
                    ),
                  ),
                  DefaultText(
                    text: "Ringing . . .",
                    textSize: 9.sp,
                  ),
                ],
              ),

            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsetsDirectional.only(bottom: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 2.5.w),
                        child: InkWell(
                          onTap: (){},
                          child: SvgPicture.asset(
                            "assets/Speaker Icon.svg",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 2.5.w),
                        child: InkWell(
                          onTap: (){},
                          child: SvgPicture.asset(
                            "assets/Close Icon.svg",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
