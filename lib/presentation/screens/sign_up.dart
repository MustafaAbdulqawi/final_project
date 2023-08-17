import 'package:final_project/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../widgets/default_material_button.dart';
import '../style/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            SvgPicture.asset(
              "assets/Pattern.svg",
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 7.h, bottom: 5.5.h),
                    child: Center(
                      child: Image.asset("assets/Logo.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 3.h),
                    child: DefaultText(
                      text: "Login To Your Account",
                      textSize: 18.sp,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.sp)),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 5.w),
                        label: const Text(
                          "Email",
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
                          borderSide:
                              BorderSide(color: Colors.red, width: 1.sp),
                        ),
                      ),
                      validator: (email) {
                        if (email!.isEmpty) {
                          return "not allowed to be empty...";
                        } else if (email.length < 13) {
                          return "Error";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 4.w, end: 4.w, top: 3.h, bottom: 2.h),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.sp)),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 5.w),
                        label: const Text(
                          "Password",
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
                          borderSide:
                              BorderSide(color: Colors.red, width: 1.sp),
                        ),
                      ),
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "not allowed to be empty...";
                        } else if (password.length < 9) {
                          return "Error";
                        }
                        return null;
                      },
                    ),
                  ),
                  DefaultText(
                    text: "Or Continue With",
                    weight: FontWeight.bold,
                    textSize: 13.sp,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 6.w, top: 3.h),
                    child: Row(
                      children: [
                        DefaultMaterialButton(
                          elevation: 2,
                          backgroundColor: Colors.white,
                          width: 40.w,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(end: 3.w),
                                child: Image.asset(
                                  "assets/face.png",
                                  height: 4.4.h,
                                ),
                              ),
                              DefaultText(
                                text: "Facebook",
                                textSize: 12.sp,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 10.w),
                          child: DefaultMaterialButton(
                            elevation: 2,
                            backgroundColor: Colors.white,
                            width: 40.w,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 3.w),
                                  child: SvgPicture.asset(
                                    "assets/google.svg",
                                  ),
                                ),
                                const DefaultText(
                                  text: "Google",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 1.5.h, bottom: 3.h),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, screens.verificationCode);
                      },
                      child: DefaultText(
                        text: "Forgot Your Password?",
                        textSize: 12.sp,
                        textColor: firstButtonGreen,
                      ),
                    ),
                  ),
                  DefaultMaterialButton(
                    width: 40.w,
                    backgroundColor: firstButtonGreen,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, screens.homeLayout, (route) => false);
                      }
                    },
                    child: DefaultText(
                      text: "Login",
                      textColor: Colors.white,
                      textSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
