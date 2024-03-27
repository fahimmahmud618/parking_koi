import 'package:flutter/material.dart';
import 'package:parking_koi/model/vehicle_history.dart';
import 'package:parking_koi/view/styles.dart';

Widget VehicleHistoryCard(BuildContext context, vehicle_history v){
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
        color: colorbluedark.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black,
          width: 1,
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(v.registration_number, style: boldTextStyle(context, colorbluedark),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Arrived: ${v.enteredAT}"),
            v.isExited? Text("Depurtured: ${v.exitedAT}"):Text(""),
            v.isExited? Text(""):Text("Present", style: boldTextStyle(context, colorbluedark),)
          ],
        )
      ],
    ),
  );
}