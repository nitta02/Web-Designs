import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentIndex = 0;

  // final pages = [
  //   const HomeScreen(),
  //   const AddUserScreen(),
  //   const ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'SOZO',
          style: AppTextStyles.heading22Bold,
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
      ),
      // body: Container(
      //   child: pages[currentIndex],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0.0,
        selectedLabelStyle: AppTextStyles.small10,
        unselectedLabelStyle: AppTextStyles.small8Bold,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.add_user), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.profile,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: black,
        unselectedItemColor: grey,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
