import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String? selectedValue;
  final List<Map<String, String>> items = [
    {'value': 'ABF-252', 'label': 'Nandy kassoke'},
    {'value': 'ABF-254', 'label': 'Veronica akpan'},
    {'value': 'ABF-255', 'label': 'Kadia doumbia'},
    {'value': 'ABF-256', 'label': 'Assetou'},
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Text('Select an item'),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
      items: items.map<DropdownMenuItem<String>>((item) {
        return DropdownMenuItem<String>(
          value: item['value'],
          child: Text(
            truncateText('${item['value']} -- ${item['label']}', 15),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
    );
  }

  String truncateText(String text, int length) {
    if (text.length > length) {
      return text.substring(0, length) + '...';
    } else {
      return text;
    }
  }
}
