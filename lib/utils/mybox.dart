import 'package:flutter/material.dart';
import 'package:warcop/utils/constants.dart';

class MyBox extends StatelessWidget {

  final List<dynamic> boxes = [
    {
      'icon':Icons.cable_outlined,
      'name_available' : 'Cables',
      'jumlah_available' : 1000,
      'satuan' : 'Meter' 
    },
    {
      'icon':Icons.ac_unit_sharp,
      'name_available' : 'ONT',
      'jumlah_available' : 10,
      'satuan' : 'Pcs' 
    },
    {
      'icon':Icons.cable_outlined,
      'name_available' : 'Cables',
      'jumlah_available' : 1000,
      'satuan' : 'Meter' 
    },
    {
      'icon':Icons.ac_unit_sharp,
      'name_available' : 'ONT',
      'jumlah_available' : 10,
      'satuan' : 'Pcs' 
    },
  ];



  // const MyBox({super.key});
 

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.cyan[400]
        ),
        child: Row(
          children: [
            // Icon(icon),
            Column(
              children: [
                // Text(name_available),
                // Text('$jumlah_available'),
                // Text(satuan)
              ],
            )
          ],
        ),
      )   
    );  
  }
}

