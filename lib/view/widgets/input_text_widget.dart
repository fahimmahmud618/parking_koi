import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';

Widget InputTextWidget(BuildContext context,Color borderColor, Color textColor, String title, String placeholder, TextEditingController textEditingController, bool ishide){
  return Container(
    // margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    // padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: boldTextStyle(context, textColor),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black,
                width: 1,
              )
          ),
          child: TextField(
            obscureText: ishide,
            controller: textEditingController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: placeholder,
                hintStyle: hintTextStyle(context, textColor)
            ),
          ),
        )
      ],
    ),
  );
}

Widget InputTextWidgetSized(BuildContext context,double sizeRatio, Color borderColor, Color textColor, String title, String placeholder, TextEditingController textEditingController, bool ishide){
  return Container(
    width: get_screenWidth(context)*sizeRatio,
    // margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    // padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: boldTextStyle(context, textColor),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black,
                width: 1,
              )
          ),
          child: TextField(
            obscureText: ishide,
            controller: textEditingController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: placeholder,
                hintStyle: hintTextStyle(context, textColor)
            ),
          ),
        )
      ],
    ),
  );
}