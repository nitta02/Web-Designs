import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/signup_controller.dart';
import 'package:social_media_app/provider/darkTheme_provider.dart';
import 'package:social_media_app/utils/textStyles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final providerValue = Provider.of<ThemeProvider>(context);
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
            SwitchListTile(
              title: const Text('Theme Mode'),
              secondary: Icon(providerValue.getDarkTheme
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              value: providerValue.getDarkTheme,
              onChanged: (value) {
                providerValue.setTheTheme = value;
              },
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
