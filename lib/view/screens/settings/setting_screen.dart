import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/signup_controller.dart';
import 'package:social_media_app/utils/textStyles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<SignUpController>(
      builder: (context, value, child) {
        return ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
            vertical: 1.h,
          ),
          children: [
            ListTile(
              // horizontalTitleGap: MediaQuery.of(context).size.width / 1.6,
              leading: const Icon(IconlyLight.bookmark),
              title: const Text('Saved'),
              titleTextStyle: AppTextStyles.body14,
            ),
            const Divider(),
            ListTile(
              // horizontalTitleGap: MediaQuery.of(context).size.width / 1.6,
              leading: const Icon(Icons.light_mode),
              title: const Text('Theme'),
              titleTextStyle: AppTextStyles.body14,
            ),
            const Divider(),
            ListTile(
              onTap: () {
                value.signOutFunction(context);
              },
              leading: const Icon(IconlyLight.logout),
              title: const Text('Sign Out'),
              titleTextStyle: AppTextStyles.body14,
            ),
            const Divider(),
          ],
        );
      },
    ));
  }
}
