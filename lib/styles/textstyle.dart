import 'dart:ui';
import 'package:flutter/material.dart';

Text headingText(String text) {
  return Text(text,
      textScaleFactor: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black));
}

Text bodyTextWidget(String text) {
  return Text(text,
      textScaleFactor: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black));
}

Text linkTextWidget() {
  return Text("Click here for more info",
      textScaleFactor: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black));
}
