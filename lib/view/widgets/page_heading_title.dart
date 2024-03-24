import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';


Widget PageHeadingTitle(BuildContext context, String title, Color itemcolor){
  return Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    // padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
    ),
    alignment: AlignmentDirectional.centerStart,
    child: Text(
      title,
      style: TextStyle(
          color: itemcolor,
          // fontSize: ,
          fontSize: 24*get_scale_factor(context),
          fontWeight: FontWeight.w800
      ),
    ),
  );
}