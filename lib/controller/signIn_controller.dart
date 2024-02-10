import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media_app/model/registrationModel.dart';
import 'package:social_media_app/services/firebase_service.dart';
import 'package:social_media_app/services/toast_service.dart';
import 'package:social_media_app/utils/utils.dart';
import 'package:social_media_app/view/screens/main/main_screen.dart';
import 'package:social_media_app/view/screens/sign&signout/login_screen.dart';

class SignUpController extends ChangeNotifier {
  bool isLoading = false;
  bool get isloading => isLoading;

  setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  signUpFunction(BuildContext context, RegistrationModel registrationModel) {
    try {
      auth
          .createUserWithEmailAndPassword(
              email: registrationModel.email!,
              password: registrationModel.password!)
          .then((value) {
        databaseReference.push().set({
          'name': registrationModel.name,
          'email': registrationModel.email,
          'password': registrationModel.password
        }).then((value) {
          ToastService.sendAlert(
              context: context,
              message: 'Account Created Successfully',
              toastStatus: 'Congratulations');
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                  child: const MainScreen(),
                  type: PageTransitionType.leftToRight),
              (route) => false);
        });
      }).onError((error, stackTrace) {
        Utils.toastMessage(error.toString());
      });
    } catch (e) {
      Utils.toastMessage(e.toString());
    }
  }

  signOutFunction(BuildContext context) {
    auth.signOut().then((value) {
      Utils.toastMessage('Successfully Log Out');
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
              child: const SignInScreen(),
              type: PageTransitionType.leftToRight),
          (route) => false);
    });
  }
}
