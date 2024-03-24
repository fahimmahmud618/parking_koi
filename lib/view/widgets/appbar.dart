import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';

AppBar MyAppber(BuildContext context, String title, Color bgColor, Color itemcolor){
  return AppBar(
    title: Text(title, style: nameTitleStyle(context, itemcolor),),
    backgroundColor: bgColor,
  );
}