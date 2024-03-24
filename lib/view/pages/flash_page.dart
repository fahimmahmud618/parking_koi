import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(null, Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Parking koi?", style: nameTitleStyle(context, colorbluedark),)
        ],
      ),
    )
    );
  }
}
