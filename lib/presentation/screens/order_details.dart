import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../business_logic/app_cubit/app_cubit.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
                                text: "Order Details",
                                weight: FontWeight.bold,
                                textSize: 23.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 3.w,end: 3.w,top: 4.h,bottom: 2.h),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              height: 12.h,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Menu Photo.svg",
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 3.w),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DefaultText(
                                          text: "Spacy fresh crab",
                                          weight: FontWeight.bold,
                                          textSize: 11.sp,
                                        ),
                                        const DefaultText(
                                          text: "Waroenk kita",
                                          textColor: Colors.grey,
                                        ),
                                        DefaultText(
                                          text: "\$35",
                                          textSize: 20.sp,
                                          textColor: secondButtonGreen,
                                          weight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(start: 4.w),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.sp),
                                        color: Colors.green.shade100,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child:  Center(
                                        child: IconButton(
                                            onPressed: (){
                                              cubit.firstMinOrder();
                                            },
                                            icon: const Icon(
                                              Icons.remove,
                                              color: secondButtonGreen,
                                            ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: DefaultText(
                                      text: cubit.one.toString(),
                                      textSize: 16.sp,
                                      weight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      cubit.firstPlusOrder();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.sp),
                                        color: secondButtonGreen,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 3.w,end: 3.w,top: 4.h,bottom: 2.h),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              height: 12.h,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Menu Photo.svg",
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.only(start: 3.w),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        DefaultText(
                                          text: "Spacy fresh crab",
                                          weight: FontWeight.bold,
                                          textSize: 11.sp,
                                        ),
                                        const DefaultText(
                                          text: "Waroenk kita",
                                          textColor: Colors.grey,
                                        ),
                                        DefaultText(
                                          text: "\$35",
                                          textSize: 20.sp,
                                          textColor: secondButtonGreen,
                                          weight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(start: 4.w),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        color: Colors.green.shade100,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child:  Center(
                                        child: IconButton(
                                          onPressed: (){
                                            cubit.secondMinOrder();
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            color: secondButtonGreen,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 4.w),
                                    child: DefaultText(
                                      text: cubit.second.toString(),
                                      textSize: 16.sp,
                                      weight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      cubit.secondPlusOrder();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        color: secondButtonGreen,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 3.w,end: 3.w,top: 4.h,bottom: 2.h),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              height: 12.h,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Menu Photo.svg",
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.only(start: 3.w),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        DefaultText(
                                          text: "Spacy fresh crab",
                                          weight: FontWeight.bold,
                                          textSize: 11.sp,
                                        ),
                                        const DefaultText(
                                          text: "Waroenk kita",
                                          textColor: Colors.grey,
                                        ),
                                        DefaultText(
                                          text: "\$35",
                                          textSize: 20.sp,
                                          textColor: secondButtonGreen,
                                          weight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(start: 4.w),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        color: Colors.green.shade100,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child:  Center(
                                        child: IconButton(
                                          onPressed: (){
                                            cubit.thirdMinOrder();
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            color: secondButtonGreen,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 4.w),
                                    child: DefaultText(
                                      text: cubit.third.toString(),
                                      textSize: 16.sp,
                                      weight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      cubit.thirdPlusOrder();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        color: secondButtonGreen,
                                      ),
                                      height: 4.6.h,
                                      width: 9.5.w,
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
                  Padding(
                    padding:
                    EdgeInsetsDirectional.only(start: 4.h, top: 4.h),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {},
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
  },
);
  }
}
