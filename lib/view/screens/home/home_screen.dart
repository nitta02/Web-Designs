import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 2.w,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
                height: 25.h,
                width: 94.w,
                decoration: BoxDecoration(
                  color: grey,
                ),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Name',
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        maxRadius: 15.sp,
                        child: const Icon(IconlyLight.profile),
                      ),
                    ],
                  ),
                  titleTextStyle: AppTextStyles.body14,
                  subtitle: const Text('Details writing'),
                  subtitleTextStyle: AppTextStyles.small12,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.heart),
                  color: red,
                ),
                const Text('Likes : 12315')
              ],
            )
          ],
        );
      },
    ));
  }
}
