import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/forgetPass_controller.dart';
import 'package:social_media_app/model/registrationModel.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/sign&signout/login_screen.dart';
import 'package:social_media_app/view/screens/sign&signout/registration_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const SignInScreen(),
                          type: PageTransitionType.leftToRight),
                      (route) => false);
                },
                icon: Icon(
                  IconlyLight.arrow_left_2,
                  size: 5.h,
                ),
                color: black),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 1.h,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage('assets/images/playstore.png'),
                        height: 20.h,
                      ),
                      Text(
                        'SOZO',
                        style: AppTextStyles.body18Bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style: AppTextStyles.body18Bold,
                    ),
                    Text(
                      'Please enter your email',
                      style: AppTextStyles.small8,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Consumer<ForgetPasswordController>(
                  builder: (context, value, child) {
                    return Form(
                      key: globalKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 2.h),
                                hintText: 'Email',
                                hintStyle: AppTextStyles.textFieldHintTextStyle,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(94.w, 6.h),

                                backgroundColor: Colors.yellow[300],
                                foregroundColor: black,
                                // disabledBackgroundColor: black,
                              ),
                              onPressed: () {
                                if (globalKey.currentState!.validate()) {
                                  value.passordReset(
                                      context,
                                      RegistrationModel(
                                        email: emailController.text,
                                      ));
                                } else {}
                              },
                              child: Text(
                                'Next',
                                style: AppTextStyles.authButtonTextStyle,
                              )),
                          SizedBox(
                            height: 4.h,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppTextStyles.small8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: const RegistrationScreen(),
                                type: PageTransitionType.leftToRight),
                            (route) => false);
                      },
                      child: Text('Register now',
                          style: AppTextStyles.simpleFieldTextStyleyeloow),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
