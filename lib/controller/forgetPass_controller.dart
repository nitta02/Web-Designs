// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media_app/model/registrationModel.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/services/toast_service.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';

class ForgetPasswordController extends ChangeNotifier {
  bool isLoading = false;
  bool get isloading => isLoading;

  setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  passordReset(
      BuildContext context, RegistrationModel registrationModel) async {
    try {
      await auth
          .sendPasswordResetEmail(email: registrationModel.email!)
          .then((value) {
        ToastService.sendAlert(
            context: context, message: 'Code Send', toastStatus: 'SUCCESS');
        // Navigator.pushAndRemoveUntil(
        //     context,
        //     PageTransition(
        //         child: const MainScreen(),
        //         type: PageTransitionType.leftToRight),
        //     (route) => false);
      });
    } catch (e) {
      ToastService.sendAlert(
          context: context,
          message: 'Incorrect Information',
          toastStatus: 'ERROR');
    }
  }
}
