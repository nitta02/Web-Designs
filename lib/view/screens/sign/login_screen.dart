import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 2.h,
        ),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/image1.png')),
            Text(
              'SOZO',
              style: AppTextStyles.heading22Bold,
            ),
            const SizedBox(
              height: 20,
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
            SizedBox(
              height: 4.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(94.w, 6.h),
                  backgroundColor: grey,
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
                  'Sign In',
                  style: AppTextStyles.authButtonTextStyle,
                ))
          ],
        ),
      )),
    );
  }
}
