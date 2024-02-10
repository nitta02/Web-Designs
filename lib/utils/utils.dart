import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static focusNoteUtils(BuildContext context, FocusNode currentNodeFocus,
      FocusNode nextNodeFocus) {
    currentNodeFocus.unfocus();
    FocusScope.of(context).requestFocus();
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
    );
  }
}
