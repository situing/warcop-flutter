import 'package:flutter/material.dart';
import 'package:warcop/utils/constants.dart';
import 'package:warcop/utils/mytile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utils/mybox.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Warehouse of Cables, ONT, & Patch Cords',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)
              ),
            ),
          ),
            
          // AspectRatio(
          //   aspectRatio: 1,
          //   child: SizedBox(
          //       width: double.infinity,
          //       child: GridView.builder(
          //         itemCount: boxes.length,
          //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2),
          //         itemBuilder: (context, index) {
          //           final IconData icon = boxes[index]['icon'];
          //           final String title =
          //               boxes[index]['title'];
          //           final int volStock =
          //               boxes[index]['vol_stock'];
          //           final String satuan = boxes[index]['satuan'];
          //           return Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(8.0),
          //                     color: Colors.cyan[400]),
          //                 child: Row(
          //                   children: [
          //                     Icon(icon),
          //                     Column(
          //                       children: [
          //                         Text(title),
          //                         Text('$volStock'),
          //                         Text(satuan)
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ));
          //         },
          //       )),
          // ),
          Expanded(
            flex: 5,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                // pauseAutoPlayOnManualNavigate: true,
                // autoPlay: true,
                viewportFraction: 0.8,
                // autoPlayInterval: const Duration(seconds: 2),
                // autoPlayAnimationDuration:  const Duration(milliseconds: 1000),
                // autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade900,
                          blurRadius: 14,
                          offset: const Offset(2,3)
                        )
                      ],
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade200
                    ),
                    
                  ),
                ),
                
              ],
            )
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return const MyTile();
          }))
        ]),
      ),
    );
  }
}
