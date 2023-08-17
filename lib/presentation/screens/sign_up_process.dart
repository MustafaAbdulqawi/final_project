import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;

import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({super.key});

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
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
                                EdgeInsetsDirectional.only(top: 4.h, end: 7.w),
                            child: Column(
                              children: [
                                DefaultText(
                                  text: "Fill in your bio to get started",
                                  weight: FontWeight.bold,
                                  textSize: 20.sp,
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
                      padding: EdgeInsetsDirectional.only(top: 4.h,start: 6.w),
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
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 4.w, end: 4.w, top: 3.h, bottom: 3.h),
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                      label: const Text(
                        "First Name",
                      ),
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                    validator: (firstName) {
                      if (firstName!.isEmpty) {
                        return "not allowed to be empty...";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 4.w, end: 4.w, bottom: 3.h),
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                      label: const Text(
                        "Last Name",
                      ),
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                    validator: (lastName) {
                      if (lastName!.isEmpty) {
                        return "not allowed to be empty...";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 4.w, end: 4.w, bottom: 3.h),
                  child: TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                      label: const Text(
                        "Mobile Number",
                      ),
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: borderTextForm, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                    validator: (phoneNumber) {
                      if (phoneNumber!.isEmpty) {
                        return "Please enter your phone number";
                      } else if (phoneNumber.length < 11) {
                        return "Error";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.only(top: 20.h),
                  child: DefaultMaterialButton(
                    height: 7.8.h,
                    width: 38.w,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, screens.uploadPhoto);
                      }
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
            ),
          ),
        ],
      ),
    );
  }
}
