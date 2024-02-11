import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media_app/model/registrationModel.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';

class GetFetchServices extends ChangeNotifier {
  registerData(
      RegistrationModel registrationModel, BuildContext context) async {
    try {
      await firebaseFirestore
          .collection('Resturant')
          .doc(auth.currentUser!.uid)
          .set(registrationModel.toMap())
          .whenComplete(() {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                child: const MainScreen(),
                type: PageTransitionType.leftToRight),
            (route) => false);
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  fetchData() async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
          await firebaseFirestore
              .collection('Resturant')
              .doc(auth.currentUser!.uid)
              .get();

      RegistrationModel model = RegistrationModel.fromMap(snapshot.data()!);
      return model;
    } catch (e) {
      throw Exception(e);
    }
  }
}
