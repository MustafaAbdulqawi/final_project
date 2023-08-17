import 'package:final_project/business_logic/app_cubit/app_cubit.dart';
import 'package:final_project/presentation/style/colors.dart';
import 'package:final_project/presentation/views/home_item.dart';
import 'package:final_project/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
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
                      Image.asset(
                        "assets/ThirdPattern.png",
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    top: 7.h, start: 7.w, end: 11.w),
                                child: SizedBox(
                                  height: 15.h,
                                  width: 57.w,
                                  child: DefaultText(
                                    text: "Find Your Favorite Food",
                                    textSize: 25.sp,
                                    weight: FontWeight.bold,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              ClipOval(
                                child: Container(
                                  height: 7.h,
                                  width: 14.w,
                                  color: Colors.white,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      color: secondButtonGreen,
                                      size: 5.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 7.8.w, end: 6.w),
                                  child: TextFormField(
                                    controller: searchController,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 30.sp,
                                        color: iconBack,
                                      ),
                                      fillColor: backgroundBack,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp),
                                      ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2.h, horizontal: 5.w),
                                      label: const Text(
                                        "What do you want to order?",
                                        style: TextStyle(
                                          color: form,
                                        ),
                                      ),
                                      labelStyle:
                                          const TextStyle(color: Colors.grey),
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(end: 8.8.w),
                                child: InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/Filter Icon.svg",
                                    width: 14.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const HomeItem(),
                        ],
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
