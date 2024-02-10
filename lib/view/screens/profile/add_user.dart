import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 1.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 35.h,
                width: 80.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: grey,
                    border: Border.all(
                      style: BorderStyle.solid,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyLight.add_user,
                      color: black,
                    ),
                    Text(
                      'add friends',
                      style: AppTextStyles.small10,
                    )
                  ],
                )),
          )
        ],
      ),
    )));
  }
}
