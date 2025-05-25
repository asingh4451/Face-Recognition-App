import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:sampleproject1/pages/admin.dart';

class SuccessAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color(0XFFff6e7f),
                Color(0XFFbfe9ff),
              ]),
            ),
            child: Column(children: [
              Container(
                  padding:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                  decoration: BoxDecoration(
                      color: Color(0XFFFD7272),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                              child: Text(
                            'Welcome Admin',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Oswald'),
                          )),
                          Center(
                              child: Icon(
                            Icons.dashboard,
                            size: 25,
                            color: Colors.white,
                          ))
                        ]),
                  ])),
              SizedBox(height: 100),
              Text('Admin Dashboard',
                  style: TextStyle(
                      color: Color(0XFF192655),
                      fontSize: 30,
                      fontFamily: 'DaiBannaSIL-Light')),
              SizedBox(height: 150),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/admin'),
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange[900],
                  ),
                  child: Center(
                    child: Text("Create Courses",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange[900],
                ),
                child: Center(
                  child: Text("Add Courses",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              )
            ])));
  }
}
