import 'package:flutter/material.dart';

class mywidget {
  void showSnackBar(msg, cntx) {
    final snackBar = SnackBar(
      content: Text(msg),
      backgroundColor: Colors.black,
    );
    ScaffoldMessenger.of(cntx).showSnackBar(snackBar);
  }
}
