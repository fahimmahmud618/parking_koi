import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parking_koi/view/pages/home_page.dart';
import 'package:parking_koi/view/pages/log_in_page.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';

class FlashPage extends StatefulWidget {
  const FlashPage({super.key});

  @override
  State<FlashPage> createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {
  void load()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }
  @override
  void initState() {
    Timer(Duration(seconds: 4),load);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(null, Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Parking koi?", style: nameTitleStyle(context, colorbluedark),),
          Image.asset("asset/logogif.gif",
            width: get_screenWidth(context)*0.5,
          ),
        ],
      ),
    )
    );
  }
}
