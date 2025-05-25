//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:sampleproject1/pages/firstpage.dart';
import 'package:sampleproject1/pages/student.dart';
import 'package:sampleproject1/pages/admin.dart';
import 'package:sampleproject1/pages/teacher.dart';
import 'package:sampleproject1/pages/attendance.dart';
import 'package:sampleproject1/pages/successful_admin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => firstPage(),
      '/student': (context) => Student(),
      '/admin': (context) => Admin(),
      '/teacher': (context) => Teacher(),
      '/attendance': (context) => Attendance(),
      '/successadmin': (context) => SuccessAdmin()
      
    },
  ));
}
