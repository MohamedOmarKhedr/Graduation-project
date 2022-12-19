import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nicu/main.dart';
import 'package:fluttertoast/fluttertoast.dart';

dynamic textCopied(String value) {
  return [Clipboard.setData(ClipboardData(text: value)), toastTextCopied()];
}

dynamic toastTextCopied() {
  return Fluttertoast.showToast(
      msg: "The text is has been copied",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0);
}
