import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  final List<String> itemList;
  final String selectedOption;
  final Color textColor;
  final void Function(String) onChanged;

  const MyDropDown({
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
      child: DropdownButton<String>(
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
    );
  }
}

