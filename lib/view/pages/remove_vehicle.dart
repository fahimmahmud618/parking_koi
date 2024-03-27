import 'dart:html';

import 'package:flutter/material.dart';
import 'package:parking_koi/model/vehicle_history.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/action_button.dart';
import 'package:parking_koi/view/widgets/alert_dialog.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';
import 'package:parking_koi/view/widgets/page_heading_title.dart';

class RemoveVehicle extends StatefulWidget {
  const RemoveVehicle({super.key});

  @override
  State<RemoveVehicle> createState() => _RemoveVehicleState();
}

class _RemoveVehicleState extends State<RemoveVehicle> {
  bool isQRScanned=false;
  String? registration_num;
  double payment_amount=0;
  vehicle_history? vh;

  void scanQR_and_retrive_data(){
    //TODO Mehzabin
    setState(() {
      vh = new vehicle_history("001", "DHAKA-GHA-11-12432", "11:23 am", true, "1:22 pm");
      isQRScanned=true;
      payment_amount=150.00;
    });
  }

  void checkout_and_saveinDB(){
      //TODO Sadia: save in db

    myAlertDialog("Parking Koi", "${vh?.registration_number} successfully checked out.", context, itemcolor, bgcolor);
    // Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(MyAppBar(context, "Parking Koi", colorbluedark, colorWhite),
        Container(
          child: Column(
            children: [
              PageHeadingTitle(context, "CheckOut", colorbluedark),
              ActionButton(context, colorbluedark, "Scan QR", scanQR_and_retrive_data),
              isQRScanned? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("CheckOut For: ${vh?.registration_number}", style: boldTextStyle(context, colorbluedark),),
                  Text("Arrived at: ${vh?.enteredAT}", style: normalTextStyle(context, Colors.black),),
                  Text("Departed: ${vh?.exitedAT}", style: normalTextStyle(context, Colors.black),),
                  Text("Payable amount: ${payment_amount}", style: boldTextStyle(context, Colors.black),),
                  SizedBox(height: 30,),
                  ActionButton(context, colorbluedark, "Recieved Payment", checkout_and_saveinDB),
                ],
              ):Text(""),
            ],
          ),
        )
    );
  }
}
