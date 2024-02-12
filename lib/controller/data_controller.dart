// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/services/toast_service.dart';

class GetDataController extends ChangeNotifier {
  //This function is for

  //This Function is for fetching the data to the screen from the database

  getUserId(BuildContext context) {
    try {
      firebaseFirestore
          .collection('users')
          .where('userId', isEqualTo: auth.currentUser!.uid)
          .get();
      // ignore: avoid_function_literals_in_foreach_calls
      // .then((value) => value.docs.forEach((element) {
      //       print(element.reference);
      //       users.add(element.reference.id);
      //     }));
    } catch (e) {
      ToastService.sendAlert(
          context: context, message: e.toString(), toastStatus: 'ERROR');
    }
  }
}
