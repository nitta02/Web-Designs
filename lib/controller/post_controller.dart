import 'package:flutter/material.dart';
import 'package:social_media_app/model/postModel.dart';
import 'package:social_media_app/services/firebase_service.dart';

class PostController extends ChangeNotifier {
  postData(PostModel postModel) async {
    try {
      firebaseFirestore.collection('UserPosts').add({
        "email": postModel.userEmail,
        'Post': postModel.post,
        'TimeStamp': DateTime.now(),
        'Likes': [],
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  gettData() async {
    try {
      firebaseFirestore
          .collection('UserPosts')
          .orderBy("TimeStamp", descending: false)
          .snapshots();
    } catch (e) {
      throw Exception(e);
    }
  }
}
