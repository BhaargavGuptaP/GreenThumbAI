// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:greenthumbai/Components/list-view.dart';

import 'add.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool a = true;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add()));
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 25,
                )
              ]),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'GreenThumb AI',
                              style: TextStyle(
                                color: const Color.fromRGBO(57, 180, 142, 1),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Greetings Gardener!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            b = !b;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      a
                          ? selectedTab(hei, wid, 'Unhealthy Plants')
                          : nonSelectedTab(hei, wid, 'Unhealthy Plants'),
                      !a
                          ? selectedTab(hei, wid, 'Healthy Plants')
                          : nonSelectedTab(hei, wid, 'Healthy Plants'),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 227, 219, 219),
                  ),
                  width: wid * 0.9,
                  height: hei * 0.07,
                ),
                SizedBox(height: 20),
                a
                    ? Container(
                        height: hei * 0.75,
                        width: wid,
                        child: SingleChildScrollView(
                          physics: ScrollPhysics(),
                          child: Column(
                            children: [
                              Item(),
                              Item(),
                              Item(),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        height: hei * 0.75,
                        width: wid,
                        child: SingleChildScrollView(
                          physics: ScrollPhysics(),
                          child: Column(
                            children: [
                              Item(),
                              Item(),
                              Item(),
                              Item(),
                              Item(),
                              Item(),
                              Item(),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
          b ? profile(hei, wid) : Container()
        ],
      ),
    );
  }

  Container profile(double hei, double wid) {
    return Container(
      height: hei * 0.13,
      margin: EdgeInsets.only(top: hei * 0.12, left: wid * 0.33),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 25,
              blurRadius: 45,
            )
          ]),
      width: wid * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                b = false;
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: wid * 0.5, top: 10),
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Text(
              'Name: User',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Email: example@mail.com',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Container selectedTab(double hei, double wid, String a1) {
    return Container(
      height: hei * 0.06,
      width: wid * 0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 15, 99, 18),
      ),
      margin: EdgeInsets.only(left: 2.5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              a1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 5,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector nonSelectedTab(double hei, double wid, String a1) {
    return GestureDetector(
      onTap: () {
        setState(() {
          a = !a;
        });
      },
      child: Container(
        height: hei * 0.065,
        width: wid * 0.44,
        margin: EdgeInsets.only(left: 2.5),
        child: Center(
          child: Text(
            a1,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
