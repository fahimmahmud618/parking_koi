import 'package:flutter/material.dart';

import '../styles.dart';

class MyDropDown extends StatefulWidget {
  final String title;
  final List<String> itemList;
  final String selectedOption;
  final Color textColor;
  final void Function(String) onChanged;

  const MyDropDown({
    required this.title,
    required this.itemList,
    required this.selectedOption,
    required this.textColor,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedOption;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: get_screenWidth(context)*sizeRatio,
      // margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: boldTextStyle(context, colorbluedark),),
          DropdownButton<String>(
            value: selectedValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            style: TextStyle(color: widget.textColor),
            // Array list of items
            items: widget.itemList.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item, style: TextStyle(color: widget.textColor)),
              );
            }).toList(),
            // After selecting the desired option, it will
            // change button value to the selected value
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  selectedValue = newValue; // Update selected value
                  widget.onChanged(newValue); // Call onChanged callback
                });
              }
            },
          ),
        ],
      ),
    );
  }
}