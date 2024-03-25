import 'package:flutter/material.dart';
import 'package:parking_koi/view/imageStrings.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/dropdown.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';
import 'package:parking_koi/view/widgets/vehicle_type_info_show.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int presentVehicleCount = 26;
  int carCount = 12;
  int bikeCount = 4;
  int truckCount = 2;

  List<String> ditem = [
    'ঢাকা',
    'ফরিদপুর',
    'গাজীপুর',
    'গোপালগঞ্জ',
    'জামালপুর',
    'কিশোরগঞ্জ',
    'মাদারীপুর',
    'মানিকগঞ্জ',
    'মুন্সীগঞ্জ',
    'ময়মনসিংহ',
    'নারায়ণগঞ্জ',
    'নরসিংদী',
    'নেত্রকোনা',
    'রাজবাড়ী',
    'শরীয়তপুর',
    'শেরপুর',
    'টাঙ্গাইল',
    'বগুড়া',
    'জয়পুরহাট',
    'নওগাঁ',
    'নাটোর',
    'নবাবগঞ্জ',
    'পাবনা',
    'রাজশাহী',
    'সিরাজগঞ্জ',
    'দিনাজপুর',
    'গাইবান্ধা',
    'কুড়িগ্রাম',
    'লালমনিরহাট',
    'নীলফামারী',
    'পঞ্চগড়',
    'রংপুর',
    'ঠাকুরগাঁও',
    'বরগুনা',
    'বরিশাল',
    'ভোলা',
    'ঝালকাঠি',
    'পটুয়াখালী',
    'পিরোজপুর',
    'বান্দরবান',
    'ব্রাহ্মণবাড়িয়া',
    'চাঁদপুর',
    'চট্টগ্রাম',
    'কুমিল্লা',
    'কক্সবাজার',
    'ফেনী',
    'খাগড়াছড়ি',
    'লক্ষ্মীপুর',
    'নোয়াখালী',
    'রাঙ্গামাটি',
    'হবিগঞ্জ',
    'মৌলভীবাজার',
    'সুনামগঞ্জ',
    'সিলেট',
    'বাগেরহাট',
    'চুয়াডাঙ্গা',
    'যশোর',
    'ঝিনাইদহ',
    'খুলনা',
    'কুষ্টিয়া',
    'মাগুরা',
    'মেহেরপুর',
    'নড়াইল',
    'সাতক্ষীরা',
  ];
  String? city;
  void set_city(String x){
    city=x;
    print(city);
  }
  void go_to_add_vehicle_page(){

  }

  void go_to_remove_vehicle_page(){

  }
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(
        MyAppBar(context, "Parking koi", colorbluedark, colorWhite),
        Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: colorbluedark.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              presentVehicleCount.toString(),
                              style: nameTitleStyle(context, Colors.black),
                            ),
                            Text("Vehicles are in the parking slot now"),
                            // Text("test"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            VehicleTypeInfoShpw(context, carlogo, "Car", carCount),
                            VehicleTypeInfoShpw(
                                context, bikelogo, "Car", bikeCount),
                            VehicleTypeInfoShpw(
                                context, trucklogo, "Pickup", truckCount),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            InkWell(
              onTap: go_to_add_vehicle_page,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: colorbluedark,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: Icon(Icons.add_circle_rounded, color: colorWhite, ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text("Add a Vehicle", style: TextStyle(color: colorWhite,fontWeight:  FontWeight.bold, fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: go_to_remove_vehicle_page,
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: colorbluedark,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: Icon(Icons.remove_circle_rounded, color: colorWhite, ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text("Checkout a Vehicle", style: TextStyle(color: colorWhite,fontWeight:  FontWeight.bold, fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
            MyDropDown(itemList: ditem, selectedOption: ditem[0], textColor: Colors.black, onChanged: set_city),
          ],
        ));
  }
}

