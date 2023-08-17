import 'package:final_project/business_logic/app_cubit/app_cubit.dart';
import 'package:final_project/widgets/default_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_text.dart';
import '../style/colors.dart';
import 'package:final_project/core/screens.dart' as screens;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late AppCubit cubit;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
          Form(
            key: formKey,
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/Pattern.svg",
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 7.h, bottom: 3.h),
                      child: Center(
                        child: Image.asset("assets/Logo.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 3.h),
                      child: DefaultText(
                        text: "Sign Up For Free ",
                        textSize: 18.sp,
                        weight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            "assets/Profile.png",
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.sp)),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 5.w),
                          label: const Text(
                            "Anamwp..",
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
                        validator: (text){
                          if(text!.isEmpty){
                            return "not allowed to be empty...";
                          }else if(text.length<6){
                            return "not allowed to be less than 6 digits...";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 4.w, end: 4.w, top: 3.h, bottom: 3.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            "assets/Message.png",
                          ),
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
                        validator: (email){
                          if(email!.isEmpty){
                            return "not allowed to be empty...";
                          }else if(email.length<12){
                            return "not allowed to be less than 12 digits...";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 4.w, end: 4.w, bottom: 2.h),
                      child: TextFormField(
                        obscureText: cubit.isHidden,
                        // obscuringCharacter: "*",
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            "assets/Lock.png",
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => cubit.showAndHidePassword(),
                            icon:  Icon(cubit.suffixIcon),
                          ),
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
                        validator: (password){
                          if(password!.isEmpty){
                            return "not allowed to be empty...";
                          }else if(password.length<6){
                            return "not allowed to be less than 6 digits...";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 4.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: secondButtonGreen,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 2.w),
                                child: const DefaultText(
                                  text: "Keep My Signed In",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 1.7.h),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  color: secondButtonGreen,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(start: 2.w),
                                  child: const DefaultText(
                                    text: "Email Me About Pricing Pricing",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.only(top: 2.8.h, bottom: 1.h),
                      child: DefaultMaterialButton(
                        height: 7.8.h,
                        width: 55.w,
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            Navigator.pushNamed(context, screens.signUpProcess);
                          }
                        },
                        backgroundColor: secondButtonGreen,
                        child: DefaultText(
                          text: "Create Account",
                          weight: FontWeight.bold,
                          textColor: Colors.white,
                          textSize: 18.sp,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, screens.signUp);
                      },
                      child: DefaultText(
                        text: "already have an account?",
                        textColor: secondButtonGreen,
                        textSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  },
);
  }
}
