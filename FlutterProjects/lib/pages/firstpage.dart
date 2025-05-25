import 'package:flutter/material.dart';
import 'package:sampleproject1/pages/admin.dart';
import 'package:sampleproject1/pages/student.dart';
import 'package:sampleproject1/pages/teacher.dart';

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0XFFff6e7f),
              Color(0XFFbfe9ff),
              //Color(0xFF292E49)
            ])),
            child: Column(children: <Widget>[
              SizedBox(
                  height: 70), // Add a SizedBox with a height of 50 for spacing
              Container(
                //height: 50,
                //margin: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                alignment: Alignment.center,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(50),
                //   color: Color(0xFFFF6666),
                // ),
                child: Center(
                  child: Image.asset(
                    'assets/thapar.png',
                    width: 200,
                  ), // Add your image here
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Define the action when the "Admin" container is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Admin(), // Replace with your next page widget
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFFF6666),
                  ),
                  child: Center(
                    child: Text("Admin",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  // Define the action when the "Admin" container is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Teacher(), // Replace with your next page widget
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFFF6666),
                  ),
                  child: Center(
                    child: Text("Teacher",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // Define the action when the "Admin" container is pressed
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            Student(), // Replace with your next page widget
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFFF6666),
                    ),
                    child: Center(
                      child: Text("Student",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ))
            ])));
  }
}
