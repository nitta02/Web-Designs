import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/session_controller.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/utils/textStyles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 1.h,
            ),
            child: StreamBuilder(
              stream: fetchDatabaseReference
                  .child(SessionController().userId.toString())
                  .onValue,
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.data != null) {
                  Map<dynamic, dynamic> map = snapshot.data.snapshot.value;

                  return Column(
                    children: [
                      CircleAvatar(
                        minRadius: 14.w,
                        child: const Icon(IconlyLight.profile),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        map['name'] ??
                            '', // Display name or empty string if null
                        style: AppTextStyles.heading20,
                      ),
                      SizedBox(height: 3.h),
                    ],
                  );
                } else {
                  return const Center(
                    child: Text('Something went wrong'),
                  );
                }
              },
            )));
  }
}
