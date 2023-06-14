import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text('W A R C O P '),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);


//  final List<dynamic> boxes = [
//     {
//       'icon':Icons.cable_outlined,
//       'name_available' : 'Cables',
//       'jumlah_available' : 1000,
//       'satuan' : 'Meter' 
//     },
//     {
//       'icon':Icons.ac_unit_sharp,
//       'name_available' : 'ONT',
//       'jumlah_available' : 10,
//       'satuan' : 'Pcs' 
//     },
//     {
//       'icon':Icons.cable_outlined,
//       'name_available' : 'Cables',
//       'jumlah_available' : 1000,
//       'satuan' : 'Meter' 
//     },
//     {
//       'icon':Icons.ac_unit_sharp,
//       'name_available' : 'ONT',
//       'jumlah_available' : 10,
//       'satuan' : 'Pcs' 
//     },
//   ];

  List boxes = [
    {
      'icon':Icons.cable_outlined,
      'title' : 'Cables',
      'vol_stock' : 1000,
      'satuan' : 'Meter' 
    },
    {
      'icon':Icons.ac_unit_sharp,
      'title' : 'ONT',
      'vol_stock' : 10,
      'satuan' : 'Pcs' 
    },
    {
      'icon':Icons.cable_outlined,
      'title' : 'Patch Cord',
      'vol_stock' : 100,
      'satuan' : 'Pcs' 
    },
    {
      'icon':Icons.ac_unit_sharp,
      'title' : 'Others',
      'vol_stock' : 10,
      'satuan' : 'Pcs' 
    },
  ];