import 'package:flutter/material.dart';
import 'package:social_media_app/view/widgets/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img1.jpg'),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    color: Colors.white,
                    text: 'Find the awesome people',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    color: Colors.white,
                    text:
                        'Hey, welcome to SocioMe.\Here you will find and meet new people.',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const CustomText(
                    color: Colors.white,
                    text: 'Get Started',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
