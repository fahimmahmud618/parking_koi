import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_koi/controller/vehicle_registration_info.dart';
import 'package:parking_koi/qr/generate.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/action_button.dart';
import 'package:parking_koi/view/widgets/appbar.dart';
import 'package:parking_koi/view/widgets/dropdown.dart';
import 'package:parking_koi/view/widgets/input_text_widget.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';
import 'package:parking_koi/view/widgets/page_heading_title.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  String cityCode ="Select";
  String vehicleclassLetter="Select";
  String? registrationNUmber;
  bool registrationNumberMade = false;
  bool isQRGenerated = false;
  TextEditingController vehicleClassNumber = new TextEditingController();
  TextEditingController vehicleNumber = new TextEditingController();

  void set_cityCode(String x) {
    setState(() {
      cityCode = x;
    });
  }

  void set_vehicleClassLetter(String x) {
    setState(() {
      vehicleclassLetter = x;
    });
  }

  void make_registration() {
      setState(() {
        registrationNumberMade = true;
        registrationNUmber = cityCode! +
            "-" +
            vehicleclassLetter! +
            "\n" +
            vehicleClassNumber.text +
            "-" +
            vehicleNumber.text;
        print(registrationNUmber);
      });


  }

  void generate_QR(){

    setState(() {
      isQRGenerated=true;
    });
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateQR()));
  }

  void print_QR(){
    //TODO Mehzabin
    //TODO Sadia: Save in DB
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(
        MyAppBar(context, "Parking Koi", colorbluedark, colorWhite),
        SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PageHeadingTitle(context, "Record a Vehicle", colorbluedark),
          
                Row(
                  children: [
                    MyDropDown(
                        title: "Vehicle City",
                        itemList: banglaCityNames,
                        selectedOption: banglaCityNames[0],
                        textColor: colorbluedark,
                        onChanged: set_cityCode),
                    MyDropDown(
                        title: "Vechile Class",
                        itemList: banglaVehicleClassLetter,
                        selectedOption: banglaVehicleClassLetter[0],
                        textColor: colorbluedark,
                        onChanged: set_vehicleClassLetter),
                  ],
                ),
                Row(
                  children: [
                    InputTextWidgetSized(
                        context,
                        0.4,
                        colorWhite,
                        colorbluedark,
                        "Vehicle Class Number",
                        "class",
                        vehicleClassNumber,
                        false),
                    InputTextWidgetSized(context, 0.4, colorWhite, colorbluedark,
                        "Vehicle Number", "class", vehicleNumber, false),
                  ],
                ),
                ActionButton(context, bgcolor, "OK", make_registration),
                // Text("Registration Number: $cityCode-$vehicleClassLetter $vehicleClassNumberS-$vehicleNumberS")
                registrationNumberMade
                    ? Text(
                        "Finalize Registration Number",
                        style: boldTextStyle(context, colorbluedark),
                      )
                    : Text(""),
                SizedBox(
                  height: 20,
                ),
                registrationNumberMade
                    ? Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        child: Text(
                          "$registrationNUmber",
                          style: boldTextStyle(context, colorbluedark),
                        ))
                    : Text(""),
                registrationNumberMade? ActionButton(context, bgcolor, "Generate QR Code", generate_QR):Text(""),
                isQRGenerated? Container(
                  height: 80,
                  width: 80,
                  child: PrettyQr(
                    data: registrationNUmber!,
                    size: 200,
                    roundEdges: true,
                    elementColor: Colors.black,
                    typeNumber: 3,
                  ),
                ):Text(""),
                isQRGenerated? ActionButton(context, bgcolor, "Print QR Code", generate_QR): Text(""),
          
              ],
            ),
          ),
        ));
  }
}
