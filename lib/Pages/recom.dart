// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Recom extends StatefulWidget {
  const Recom({super.key});

  @override
  State<Recom> createState() => _RecomState();
}

class _RecomState extends State<Recom> {
  List<String> climate = [
    'warm weather',
    'full sun',
    'cool weather',
    'partial shade to full sun',
    'mild winters',
    'warm summers',
    'full sun to partial shade',
    'moist',
  ];
  List<String> sun = [
    'full sun',
    'partial shade to full sun',
    'full sun to partial shade',
  ];
  List<String> soil = [
    'well-drained soil',
    'sandy soil',
  ];
  bool a = false;
  bool b = false;
  bool c = false;
  int i1 = -1;
  int i2 = -1;
  int i3 = -1;
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 60),
                    child: Text(
                      'Recommendation System',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 30, top: 60),
                      child: Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                width: wid * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        (i1 == -1) ? 'Weather' : climate[i1],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          a = !a;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: !a
                              ? Icon(Icons.arrow_drop_down_circle_outlined)
                              : Icon(Icons.close)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                width: wid * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        i2 == -1 ? 'Sunshine' : sun[i2],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          b = !b;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: !b
                              ? Icon(Icons.arrow_drop_down_circle_outlined)
                              : Icon(Icons.close)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                width: wid * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        i3 == -1 ? 'Soil Type' : soil[i3],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          c = !c;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: !c
                              ? Icon(Icons.arrow_drop_down_circle_outlined)
                              : Icon(Icons.close)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 60,
                    width: wid * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30, right: 20),
                child: Text(
                  'Based on your description, we recommend the following plants:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 30, right: 20),
                child: Text(
                  '1. Tomato',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 30, right: 20),
                child: Text(
                  '2. Brinjal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          a
              ? Container(
                  height: hei * 0.2,
                  width: wid * 0.9,
                  margin: EdgeInsets.only(top: 200, left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListView.builder(
                    itemCount: 8,
                    padding: EdgeInsets.only(bottom: 0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            i1 = index;
                          });
                          a = !a;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          height: 60,
                          width: wid * 0.9,
                          child: Center(
                            child: Text(
                              climate[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(),
          b
              ? Container(
                  height: hei * 0.2,
                  width: wid * 0.9,
                  margin: EdgeInsets.only(top: 280, left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListView.builder(
                    itemCount: 3,
                    padding: EdgeInsets.only(bottom: 0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            i2 = index;
                          });
                          b = !b;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          height: 60,
                          width: wid * 0.9,
                          child: Center(
                            child: Text(
                              sun[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(),
          c
              ? Container(
                  height: hei * 0.1,
                  width: wid * 0.9,
                  margin: EdgeInsets.only(top: 370, left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.only(bottom: 0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            i3 = index;
                          });
                          c = !c;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          height: 60,
                          width: wid * 0.9,
                          child: Center(
                            child: Text(
                              soil[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
