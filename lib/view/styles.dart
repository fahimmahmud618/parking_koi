import 'dart:ui';
import 'package:flutter/material.dart';

double get_scale_factor(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth / 375.0;
}

double get_screenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

Color colorbluedark = Color(0xFF265073);
Color color2 = Color(0xFF59B4C3);
Color color3 = Color(0xFF265073);
Color color4 = Color(0xFF5E8CFF);
Color colorWhite = Color(0xFFF6FFE4);

TextStyle nameTitleStyle (BuildContext context, Color color) {
  return TextStyle(
      color: color,
      fontSize: 24*get_scale_factor(context),
      fontWeight: FontWeight.bold
  );
}

TextStyle hintTextStyle (BuildContext context, Color color) {
  return TextStyle(
    color: color.withOpacity(0.5),
    fontSize: 14*get_scale_factor(context),
  );
}

TextStyle boldTextStyle (BuildContext context, Color color) {
  return TextStyle(
      color: color,
      fontSize: 16*get_scale_factor(context),
      fontWeight: FontWeight.bold
  );
}

TextStyle normalTextStyle (BuildContext context, Color color) {
  return TextStyle(
    color: color,
    fontSize: 16*get_scale_factor(context),
    // fontWeight: FontWeight.bold
  );
}