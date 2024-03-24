import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';

Widget Nameplate(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(left: 20*get_scale_factor(context)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("asset/car_logo.png", height: 20, width: 20,),
        Text("Parking Koi", style: nameTitleStyle(context, colorbluedark),),
      ],
    ),
  );
}