import 'dart:js';

import 'package:flutter/material.dart';
import 'package:parking_koi/view/pages/history_page.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/alert_dialog.dart';

void logout(BuildContext context){
  myConfirmationDialog("parking koi", "Are you sure want to log out?",context, itemcolor, bgcolor);
}

AppBar MyAppBar(BuildContext context, String title, Color bgColor, Color itemcolor) {
  return AppBar(
    title: Text(
      title,
      style: nameTitleStyle(context, itemcolor),
    ),
    backgroundColor: bgColor,
    actions: [
      IconButton(
        icon: Icon(Icons.history, color: itemcolor),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
        },
        tooltip: 'Parking History',
      ),
      IconButton(
        icon: Icon(Icons.logout, color: itemcolor),
        onPressed: () => logout(context),
        tooltip: 'Logout',
      ),
    ],
  );
}
// AppBar MyAppber(BuildContext context, String title, Color bgColor, Color itemcolor){
//   return AppBar(
//     title: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(title, style: nameTitleStyle(context, itemcolor),),
//         InkWell(
//           onTap: logout,
//           child: Column(
//             children: [
//               Icon(Icons.logout, color: itemcolor,),
//               Text("Logout", style: normalTextStyle(context, itemcolor),),
//             ],
//           ),
//         )
//       ],
//     ),
//     backgroundColor: bgColor,
//
//   );
// }