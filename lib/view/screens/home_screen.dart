import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/view/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomText(
          text: 'SocioMedia',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.location),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/house-chimney.svg'),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'favorite'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/api.svg'),
                label: 'Settings'),
          ]),
    );
  }
}
