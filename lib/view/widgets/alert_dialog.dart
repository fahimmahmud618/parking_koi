import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/nameplate_of_parking_koi.dart';

myAlertDialog(String title, String description, BuildContext context, Color bgcolor, Color itemcolor) {
  // Create button
  Widget okButton = TextButton(
    child: Text("OK", style: normalTextStyle(context, itemcolor),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: bgcolor,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Nameplate(context),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(title, style: nameTitleStyle(context, itemcolor)),
        ),
      ],
    ),
    content: Text(description, style: normalTextStyle(context,itemcolor ),),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}