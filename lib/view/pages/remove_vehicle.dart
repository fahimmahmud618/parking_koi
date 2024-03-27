import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';

class RemoveVehicle extends StatefulWidget {
  const RemoveVehicle({super.key});

  @override
  State<RemoveVehicle> createState() => _RemoveVehicleState();
}

class _RemoveVehicleState extends State<RemoveVehicle> {
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(MyAppBar(context, "Parking Koi", colorbluedark, colorWhite),
        Container(
          child: Text("remove vehicle"),
        )
    );
  }
}
