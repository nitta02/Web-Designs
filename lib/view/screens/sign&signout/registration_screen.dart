import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';
import 'package:social_media_app/view/screens/sign&signout/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  'Sign Up',
                  style: AppTextStyles.body18Bold,
                ),
                Text(
                  'please fill up the details to sign up',
                  style: AppTextStyles.small8,
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      hintText: 'Name',
                      hintStyle: AppTextStyles.textFieldHintTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      hintText: 'Email',
                      hintStyle: AppTextStyles.textFieldHintTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      hintText: 'Password',
                      hintStyle: AppTextStyles.textFieldHintTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
              ],
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
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const MainScreen(),
                          type: PageTransitionType.leftToRight),
                      (route) => false);
                },
                child: Text(
                  'Sign Up',
                  style: AppTextStyles.authButtonTextStyle,
                )),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: AppTextStyles.small8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                            child: const SignInScreen(),
                            type: PageTransitionType.leftToRight),
                        (route) => false);
                  },
                  child: Text('Sign In',
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
