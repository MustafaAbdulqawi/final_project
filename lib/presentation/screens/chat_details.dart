import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_text.dart';
import '../style/colors.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
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
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 9.w, top: 3.h),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: DefaultText(
                                text: "Chat",
                                weight: FontWeight.bold,
                                textSize: 23.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top:12.h),
                            child: SvgPicture.asset(
                              "assets/Profile Section.svg",
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/Sample Chating.svg",
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 18.h, start: 2.w, end: 2.w),
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
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 2.h, horizontal: 5.w),
                                label: const Text(
                                  "Okay I'm waiting  👍",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                labelStyle: const TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: borderTextForm, width: 1.sp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: borderTextForm, width: 1.sp),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 1.sp),
                                ),
                              ),
                            ),
                          )
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
                  Padding(
                    padding:
                    EdgeInsetsDirectional.only(start: 4.h, top: 13.h),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                            height: 7.h, "assets/Icon Back.svg"),
                      ),
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
