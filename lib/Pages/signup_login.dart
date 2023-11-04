// ignore_for_file: prefer_const_constructors, camel_case_types, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:greenthumbai/Pages/newhome.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({super.key});

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70, left: 20),
            child: Text(
              'Green-Thumb AI',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: hei * 0.04),
          Container(
            margin: EdgeInsets.only(left: wid * 0.05),
            height: hei * 0.07,
            width: wid * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: Row(
              children: [
                a
                    ? selectedTab(hei, wid, 'Log-In')
                    : nonSelectedTab(hei, wid, 'Log-In'),
                !a
                    ? selectedTab(hei, wid, 'Sign-Up')
                    : nonSelectedTab(hei, wid, 'Sign-Up'),
              ],
            ),
          ),
          SizedBox(height: hei * 0.1),
          a
              ? Container(
                  child: Column(
                    children: [
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: hei * 0.05,
                      ),
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: hei * 0.3),
                    ],
                  ),
                )
              : Container(
                  child: Column(
                    children: [
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: hei * 0.05,
                      ),
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: hei * 0.05,
                      ),
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: hei * 0.05,
                      ),
                      Container(
                        width: wid * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: hei * 0.1),
                    ],
                  ),
                ),
          a
              ? submitButton(context, hei, wid, 'Log-In')
              : submitButton(context, hei, wid, 'Sign-Up'),
        ],
      ),
    );
  }

  GestureDetector submitButton(
      BuildContext context, double hei, double wid, String a) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewHome()));
      },
      child: Container(
        height: hei * 0.06,
        width: wid * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            a,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
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
      margin: EdgeInsets.only(left: 3),
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
