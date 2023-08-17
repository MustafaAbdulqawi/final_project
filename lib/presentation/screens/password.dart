import 'package:final_project/business_logic/app_cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:final_project/core/screens.dart' as screens;
import '../../widgets/default_material_button.dart';
import '../../widgets/default_text.dart';
import '../style/colors.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AppCubit cubit;

  @override
  void didChangeDependencies() {
    cubit = AppCubit.get(context);
    super.didChangeDependencies();
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key:formKey,
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
                            EdgeInsetsDirectional.only(top: 4.h, end: 10.w),
                            child: Column(
                              children: [
                                DefaultText(
                                  text: "Reset your password here?",
                                  weight: FontWeight.bold,
                                  textSize: 26.sp,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 3.h, end: 13.w),
                                  child: const DefaultText(
                                    text:
                                    "Select which contact details should we use to reset your password",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            child: BlocBuilder<AppCubit, AppState>(
                              builder: (context, state) {
                                return TextFormField(
                                  obscureText: cubit.isHidden,
                                  controller: firstNameController,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        cubit.secondShowAndHidePassword();
                                      },
                                      icon: Icon(
                                        cubit.suffixIcon,
                                        size: 19.sp,
                                        color: firstButtonGreen,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.sp),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 2.h, horizontal: 5.w),
                                    label: const Text(
                                      "New Password",
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
                                  validator: (firstPassword) {
                                    if (firstPassword!.isEmpty) {
                                      return "not allowed to be empty...";
                                    }else if(firstPassword.length < 6){
                                      return "password can't be less than 6 digits";
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                          BlocBuilder<AppCubit, AppState>(
                            builder: (context, state) {
                              return TextFormField(
                                obscureText: cubit.isHidden,
                                controller: lastNameController,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      cubit.thirdShowAndHidePassword();
                                    },
                                    icon: Icon(
                                      cubit.suffixIcon,
                                      size: 19.sp,
                                      color: firstButtonGreen,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.sp),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 5.w),
                                  label: const Text(
                                    "New Password",
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
                                    borderSide:
                                    BorderSide(color: Colors.red, width: 1.sp),
                                  ),
                                ),
                                validator: (secondPassword) {
                                  if (secondPassword!.isEmpty) {
                                    return "not allowed to be empty...";
                                  }else if(secondPassword.length < 6){
                                    return "password can't be less than 6 digits";
                                  }
                                  return null;
                                },
                              );
                            },
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsetsDirectional.only(top: 26.h),
                              child: DefaultMaterialButton(
                                height: 7.8.h,
                                width: 38.w,
                                onPressed: () {
                                  if(formKey.currentState!.validate()){
                                    Navigator.pushReplacementNamed(
                                        context, screens.successNotification);
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
                      padding: EdgeInsetsDirectional.only(top: 4.h, start: 6.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:
                        SvgPicture.asset(height: 7.h, "assets/Icon Back.svg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
