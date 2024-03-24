import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(
        MyAppber(context, "Parking koi", colorbluedark, colorWhite),
        Container(
          child: Text("home page"),
        )
    );
  }
}
