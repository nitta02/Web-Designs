import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media_app/controller/session_controller.dart';
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

  signUpFunction(
      BuildContext context, RegistrationModel registrationModel) async {
    try {
      auth
          .createUserWithEmailAndPassword(
              email: registrationModel.email!,
              password: registrationModel.password!)
          .then((value) {
        SessionController().userId = auth.currentUser!.uid.toString();
        databaseReference.child(value.user!.uid).push().set({
          'userId': value.user!.uid.toString(),
          'name': registrationModel.name,
          'email': registrationModel.email,
          'password': registrationModel.password
        }).then((value) {
          ToastService.sendAlert(
              context: context,
              message: 'Account Created Successfully',
              toastStatus: 'SUCCESS');
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
      ToastService.sendAlert(
          context: context, message: e.toString(), toastStatus: 'ERROR');
    }
  }

//This function is for the user to sign out

  signOutFunction(BuildContext context) {
    auth.signOut().then((value) {
      ToastService.sendAlert(
          context: context,
          message: 'Log out Successfully',
          toastStatus: 'SUCCESS');
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
              child: const SignInScreen(),
              type: PageTransitionType.leftToRight),
          (route) => false);
    });
  }
}
