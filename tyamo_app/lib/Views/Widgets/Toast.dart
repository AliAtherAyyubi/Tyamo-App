import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast {
  String message;
  Toast({required this.message});

  void showLongToast() {
    // Fluttertoast.showToast(
    //     msg: message,
    //     // toastLength: Toast.,
    //     gravity: ToastGravity.TOP,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0);
  }
}
