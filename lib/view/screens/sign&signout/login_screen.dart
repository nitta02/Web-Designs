import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';
import 'package:social_media_app/view/screens/sign&signout/registration_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  'LOGIN',
                  style: AppTextStyles.body18Bold,
                ),
                Text(
                  'please login to your account',
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
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: AppTextStyles.simpleFieldTextStyle,
                    ),
                  ),
                )
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
                  'Sign In',
                  style: AppTextStyles.authButtonTextStyle,
                )),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'or',
                  style: AppTextStyles.small8,
                ),
                SizedBox(
                  width: 2.w,
                ),
                const Expanded(child: Divider()),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.google,
                    size: 10.w,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      size: 10.w,
                    )),
              ],
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
