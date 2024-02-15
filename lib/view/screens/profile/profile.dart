import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/post_controller.dart';
import 'package:social_media_app/model/postModel.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  final postController = TextEditingController();
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    postController.dispose();
    super.dispose();
  }

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: StreamBuilder(
                stream: firebaseFirestore
                    .collection('UserPosts')
                    .orderBy("TimeStamp", descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final post = snapshot.data!.docs[index];
                        return Card(
                          elevation: 5.0,
                          child: InkWell(
                            onLongPress: () {},
                            child: Column(
                              children: [
                                Container(
                                    height: 25.h,
                                    width: 94.w,
                                    decoration: BoxDecoration(
                                      color: grey,
                                    ),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Name',
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              CircleAvatar(
                                                maxRadius: 15.sp,
                                                child: const Icon(
                                                    IconlyLight.profile),
                                              ),
                                            ],
                                          ),
                                          titleTextStyle: AppTextStyles.body14,
                                          subtitle: Text(post['email']),
                                          subtitleTextStyle:
                                              AppTextStyles.small12,
                                        ),
                                        Container(
                                          height: 15.h,
                                          width: 92.w,
                                          decoration: BoxDecoration(
                                            color: white,
                                          ),
                                          child: Center(
                                            child: Text(post['Post']),
                                          ),
                                        )
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(isLiked
                                          ? Icons.favorite
                                          : IconlyLight.heart),
                                      color: isLiked ? red : grey,
                                    ),
                                    const Text('Likes : 12315')
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text('No Post Available'),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 3.5.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: postController,
                    decoration: InputDecoration(
                        hintText: 'Write here to post',
                        hintStyle: AppTextStyles.textFieldHintTextStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.sp),
                        )),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      PostController().postData(PostModel(
                        post: postController.text,
                        userEmail: currentUser.email,
                      ));
                    },
                    icon: Icon(
                      IconlyLight.arrow_up_circle,
                      color: black,
                      size: 4.5.h,
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
