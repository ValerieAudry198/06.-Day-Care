import 'package:baby_care/parent_input_data.dart';
import 'package:baby_care/parent_input_data.dart';
import 'package:flutter/material.dart';
import 'activity.dart';
import 'login_parent.dart';
import 'login_pengasuh.dart';
import 'registration.dart';
import 'regist_parent.dart';
import 'parent_input_data.dart';
import 'pengasuh_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wonder Daycare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/main': (context) => MainPage(),
        '/loginParents': (context) => LoginParentsPage(),
        '/loginSitter': (context) => LoginPengasuhPage(),
        '/registration': (context) => RegistrationPage(),
        '/registrationParents': (context) => RegistrationParentsPage(),
        '/parentsInputData': (context) => ParentInputDataPage(),
        '/sitterInputData': (context) => PengasuhInputDataPage(),
        '/activity': (context) => ActivityPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/babycare.png', height: 200),
            SizedBox(height: 10),
            Text(
              'Welcome to Wonder Daycare!',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown[900],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginParents');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[600], // Background color
              ),
              child: Text(
                'Login as Parents',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginSitter');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[600], // Background color
              ),
              child: Text(
                'Login as Sitter',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
