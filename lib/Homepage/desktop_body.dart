import 'package:flutter/material.dart';
import 'package:warcop/utils/constants.dart';
import 'package:warcop/utils/mytile.dart';

import '../utils/mybox.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            myDrawer,

            // head dashboard
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: boxes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          final IconData icon = boxes[index]['icon'];
                    final String title =
                        boxes[index]['title'];
                    final int volStock =
                        boxes[index]['vol_stock'];
                    final String satuan = boxes[index]['satuan'];
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey.shade900,
                                      blurRadius: 14,
                                      offset: Offset(2,3),
                                    )
                                    ],
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.grey.shade200
                                ),
                                child: Row(
                                  children: [
                                    Icon(icon),
                                    Column(
                                      children: [
                                        Text(title),
                                        Text('$volStock'),
                                        Text(satuan)
                                      ],
                                    )
                                  ],
                                ),
                              ));
                          // return MyBox();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return const MyTile();
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
