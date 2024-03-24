import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';

Widget ActionButton(BuildContext context,Color bgcolor, String text, action){
  return Container(
    width: get_screenWidth(context),
    constraints: BoxConstraints(
        minWidth: get_screenWidth(context)*0.3
    ),
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black.withOpacity(0.5))
    ),
    child: TextButton(
      onPressed: action,
      child: Text(
        text,
        style: boldTextStyle(context, itemcolor),
      ),
    ),
  );
}