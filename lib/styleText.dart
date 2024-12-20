import 'package:flutter/material.dart';

TextStyle myTextStyle({
  required var color,
  required double size,
  var fontWeight
}) {
  return TextStyle(color: color, fontSize: size, fontWeight: fontWeight);
}
