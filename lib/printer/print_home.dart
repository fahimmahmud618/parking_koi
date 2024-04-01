import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parking_koi/printer/printer.dart'; 

class PrintHome extends StatelessWidget {
   PrintHome({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {'title':'Kitkat','price':10.0, 'qty':2},
    {'title':'Oreo','price':20.0, 'qty':1},
    {'title':'Milk','price':5.0, 'qty':3},
  ];

  final f = NumberFormat('#,##0.00', 'en_US');

  @override
  Widget build(BuildContext context) {
    int total=0;
    total=data.map((e)=>e['price']*e['qty']).reduce((value, element) => value+element).toInt();
    return Scaffold(
      appBar: AppBar(
        title:  Text('Printer'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['title']),
                subtitle: Text('Price: ${f.format(data[index]['price'])} x ${data[index]['qty']}'),
                trailing: Text('Total: ${f.format(data[index]['price'] * data[index]['qty'])}'),
              );
            },
          )),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:'),
                Text('Rp. ${f.format(total)}', style: const 
                TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 80,),
                Expanded(child: TextButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Printer(data)));
                }, 
                icon: Icon(Icons.print), label: Text('Print'),
                style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.green, 
                padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                ))),  
                )
                ],
            ),
          )
        ],
      )
    );
  }
}

