import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';
import 'package:social_media_app/view/screens/sign&signout/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (auth.currentUser != null) {
      Timer(const Duration(seconds: 3), () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ));
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInScreen(),
            ));
      });
    }
    super.initState();
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                // height: 40.h,
                image: AssetImage(
                  'assets/images/playstore.png',
                ),
                filterQuality: FilterQuality.high),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'sozo',
                  style: AppTextStyles.heading26Bold,
                ),
                Text(
                  'Share your thoughts &',
                  style: AppTextStyles.simpleFieldTextStyleyeloow,
                ),
                Text(
                  'Spend time with your friends',
                  style: AppTextStyles.body14,
                )
              ],
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const HomeScreen(),
            //           ));
            //     },
            //     child: Text('Next'))
          ],
        ),
      ),
    ));
  }
}
