import 'package:cache_manager/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:parking_koi/view/pages/flash_page.dart';
import 'package:parking_koi/view/styles.dart';

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
myConfirmationDialog(String title, String description, BuildContext context, Color bgcolor, Color itemcolor) {
  // Create button
  Widget yesButton = TextButton(
    child: Text("Yes", style: normalTextStyle(context, itemcolor),),
    onPressed: () {
      print("log outtted");
      Navigator.of(context).pop();
      DeleteCache.deleteKey("cache", Navigator.push(context, MaterialPageRoute(builder: (context)=>FlashPage())));
    },
  );

  Widget noButton = TextButton(
    child: Text("No", style: normalTextStyle(context, itemcolor),),
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
      yesButton,
      noButton
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