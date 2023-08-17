import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../business_logic/app_cubit/app_cubit.dart';
import '../../widgets/default_text.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  late AppCubit cubit;
  @override
  void didChangeDependencies() {
    cubit = AppCubit.get(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
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
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: 9.w, top: 14.h),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: DefaultText(
                                    text: "Chat",
                                    weight: FontWeight.bold,
                                    textSize: 23.sp,
                                  ),
                                ),
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
                      // Padding(
                      //   padding: EdgeInsetsDirectional.only(
                      //       start: 4.h, top: 4.h),
                      //   child: Container(
                      //     alignment: Alignment.topLeft,
                      //     child: InkWell(
                      //       onTap: () {
                      //         Navigator.pop(context);
                      //       },
                      //       child: SvgPicture.asset(
                      //           height: 7.h, "assets/Icon Back.svg"),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 20.h),
                        child: Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, screens.chatDetails);
                                },
                                child: SvgPicture.asset(
                                  "assets/Chating 1.svg",
                                ),
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  "assets/Chating 2.svg",
                                ),
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  "assets/Chating 3.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),


        );
      },
    );
  }
}
