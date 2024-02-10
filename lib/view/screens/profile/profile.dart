import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/textStyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        children: [
          Column(
            children: [
              CircleAvatar(
                minRadius: 14.w,
                child: const Icon(IconlyLight.profile),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Name',
                style: AppTextStyles.heading20,
              )
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Divider(),
          ListTile(
            // horizontalTitleGap: MediaQuery.of(context).size.width / 1.6,
            leading: const Icon(IconlyLight.bookmark),
            title: const Text('Saved'),
            titleTextStyle: AppTextStyles.body14,
          ),
          ListTile(
            // horizontalTitleGap: MediaQuery.of(context).size.width / 1.6,
            leading: const Icon(Icons.light_mode),
            title: const Text('Theme'),
            titleTextStyle: AppTextStyles.body14,
          ),
          ListTile(
            leading: const Icon(IconlyLight.edit),
            title: const Text('Edit'),
            titleTextStyle: AppTextStyles.body14,
          ),
          ListTile(
            leading: const Icon(IconlyLight.logout),
            title: const Text('Sign Out'),
            titleTextStyle: AppTextStyles.body14,
          )
        ],
      ),
    );
  }
}
