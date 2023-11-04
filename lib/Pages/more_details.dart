// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: const Text(
                  'More Details',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.close,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            height: hei * 0.8,
            width: wid * 0.9,
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  listItems(hei, wid, '1. Tomato',
                      'well-drained, sandy or red loam soils rich in organic matter with a pH range of 6.0-7.0 are considered as ideal.'),
                  SizedBox(height: 20),
                  listItems(hei, wid, '2. Brinjal',
                      'well drained silt loam and clay loam soils are preferred'),
                  SizedBox(height: 20),
                  listItems(
                      hei, wid, '3. Chilli', 'warm humid climate (20-30 oC)'),
                  SizedBox(height: 20),
                  listItems(hei, wid, '4. Potato', 'pH range of 5.2-6.4'),
                  SizedBox(height: 20),
                  listItems(hei, wid, '5. Onion',
                      ' average rainfall of 750-1000 mm during monsoon.'),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container listItems(double hei, double wid, String a, String b) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      width: wid * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              a,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: wid * 0.7,
            child: Text(
              b,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
