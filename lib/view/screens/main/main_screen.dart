import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/view/screens/home/home_screen.dart';
import 'package:social_media_app/view/screens/profile/add_user.dart';
import 'package:social_media_app/view/screens/profile/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 4.h,
          titleTextStyle: AppTextStyles.heading22Boldamber,
          automaticallyImplyLeading: false,
          title: const Text(
            'SOZO',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.qrcode,
                color: black,
              ),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            labelStyle: AppTextStyles.small10,
            indicatorColor: Colors.amber,
            unselectedLabelStyle: AppTextStyles.small8,
            tabs: [
              Tab(
                // text: 'Home',
                icon: Icon(
                  IconlyLight.home,
                  color: black,
                ),
              ),
              Tab(
                // text: 'Add',
                icon: Icon(
                  IconlyLight.add_user,
                  color: black,
                ),
              ),
              Tab(
                // text: 'Profile',
                icon: Icon(
                  IconlyLight.profile,
                  color: black,
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            AddUserScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
