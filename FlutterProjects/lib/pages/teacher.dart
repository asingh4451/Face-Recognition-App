import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sampleproject1/pages/successful_admin.dart';

class Teacher extends StatefulWidget {
  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  String Message = " ";
  Future<void> _loginWithEmailAndPassword() async {
    try {
      String email = emailC.text;
      String password = passwordC.text;
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuccessAdmin()),
      );
    } catch (e) {
      Message = 'An error occured,';
      if (e is FirebaseAuthException) {
        if (e.code == 'user-not-found') {
          Message = 'No user found with this email.';
        } else if (e.code == 'wrong-password') {
          Message = 'Incorrect password.';
        }
      }
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Error'),
            content: Text(Message),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color(0xFFff4b1f),
          Color(0xFF1fddff),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeTransition(
                    opacity: AlwaysStoppedAnimation<double>(1),
                    child: Text(
                      "Teacher Login",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 10),
                  FadeTransition(
                    opacity: AlwaysStoppedAnimation<double>(1),
                    child: Text(
                      "Welcome Back Teacher",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/teacher.png',
                        width: 100,
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60),
                        FadeTransition(
                          opacity: AlwaysStoppedAnimation<double>(1),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    controller: emailC,
                                    decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    controller: passwordC,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 40),
                        // FadeTransition(
                        //   opacity: AlwaysStoppedAnimation<double>(1),
                        //   child: Text("Forgot Password?",
                        //       style: TextStyle(color: Colors.grey)),
                        // ),
                        SizedBox(height: 40),
                        GestureDetector(
                          onTap: _loginWithEmailAndPassword,
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900],
                            ),
                            child: Center(
                              child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
