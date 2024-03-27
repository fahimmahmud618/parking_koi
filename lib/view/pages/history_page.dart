import 'package:flutter/material.dart';
import 'package:parking_koi/model/vehicle_history.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';
import 'package:parking_koi/view/widgets/vehicle_history_card.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late List<vehicle_history> vh;

  @override
  void initState() {
    // TODO: Sadia: Fetch data
    //Demo data here
    vh=[
      new vehicle_history("001", "Dhaka-GA-12-112233", "11:12 pm", true, "11:55 pm"),
      new vehicle_history("002", "Dhaka-GHA-12-112433", "11:10 pm", false, " "),
      new vehicle_history("003", "MADARIPUR-GA-12-414233", "11:12 pm", true, "12:33 am"),
      new vehicle_history("004", "Feni-GA-11-155223", "11:22 pm", false, " "),
      new vehicle_history("005", "Dhaka-GA-11-645233", "11:52 pm", true, "1:00 pm"),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(MyAppBar(context, "Parking Koi", colorbluedark, colorWhite), Container(
      child: Column(
        children: vh.map((e) => VehicleHistoryCard(context, e)).toList(),
      )
    ));
  }
}
