import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/strings.dart';
import 'package:fluttertoast/fluttertoast.dart';




class Utility  {
  static void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 18.0);
  }
  static void showToastSuccess(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.black,
        fontSize: 18.0);
  }

  static void showErrorToast() {
    showToast(Strings.errorMessage);
  }


}
