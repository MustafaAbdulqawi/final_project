import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../business_logic/app_cubit/app_cubit.dart';
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({super.key});

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: ListView(
            children: [Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 9.h, start: 7.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.only(top: 7.h, end: 7.w),
                            child: Column(
                              children: [
                                DefaultText(
                                  text: "Upload Your Photo Profile",
                                  weight: FontWeight.bold,
                                  textSize: 26.sp,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 3.h, end: 7.w),
                                  child: const DefaultText(
                                    text:
                                    "This data will be displayed in your account profile for security",
                                  ),
                                ),
                              ],
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
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 8.h,start: 6.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                            height: 7.h, "assets/Icon Back.svg"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/Rectangle 558.png",
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 40.h),
                      child: DefaultMaterialButton(
                        height: 7.8.h,
                        width: 38.w,
                        onPressed: () {
                          Navigator.pushNamed(context, screens.setLocation);
                        },
                        backgroundColor: secondButtonGreen,
                        child: DefaultText(
                          text: "Next",
                          weight: FontWeight.bold,
                          textColor: Colors.white,
                          textSize: 18.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),]
          ),
        );
      },
    );
  }
}
