import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  static late FToast _flutterToast;

  static void initializeToast(BuildContext context) {
    _flutterToast = FToast();
    _flutterToast.init(context);
  }

  static void showToast(String message) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color.fromARGB(255, 125, 125, 125),
      ),
      child: Text(
        message,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    //
    _flutterToast.removeQueuedCustomToasts();
    _flutterToast.showToast(
        child: toast,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, widget) {
          double distance = MediaQuery.of(context).size.height * 0.75;
          return Padding(
            padding: EdgeInsets.fromLTRB(8, distance, 8, 0),
            child: widget,
          );
        }
        // fadeDuration: 350,
        // gravity: ToastGravity.BOTTOM,
        );
    // ScaffoldMessenger.of(context)
    //     .showSnackBar(SnackBar(content: Text('Yay! A SnackBar!')));
  }

  static void showStackedToast(String message) {
    _flutterToast.removeQueuedCustomToasts();
    Fluttertoast.showToast(
      msg: message,
      textColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 125, 125, 125),
    );
  }
}
