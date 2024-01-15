import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:social_media_app/view/screens/pages/add_users.dart';
import 'package:social_media_app/view/screens/pages/fav_screen.dart';
import 'package:social_media_app/view/screens/pages/profile_screen.dart';
import 'package:social_media_app/view/screens/pages/setting_screen.dart';
import 'package:social_media_app/view/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const AddUserScreen(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomText(
          text: 'SocioMedia',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.location),
          ),
        ],
        elevation: 0.0,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.star,
              ),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.add_user), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.setting,
              ),
              label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.profile,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
