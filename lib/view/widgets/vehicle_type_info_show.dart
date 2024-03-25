import 'package:flutter/material.dart';

Widget VehicleTypeInfoShpw(BuildContext context, String imageurl, String vehicleType, int count){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(imageurl, height: 30, width: 30,),
        SizedBox(width: 20,),
        Text("$vehicleType : $count"),
      ],
    ),
  );
}