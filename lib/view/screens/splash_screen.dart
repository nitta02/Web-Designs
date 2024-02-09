import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 3.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage('assets/images/image1.png'),
                filterQuality: FilterQuality.high),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'sozo',
                  style: AppTextStyles.heading20Bold,
                ),
                Text(
                  'Spend time with your thoughts and friends',
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
