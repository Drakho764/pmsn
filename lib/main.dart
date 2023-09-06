import 'package:flutter/material.dart';
import 'package:pmsn/assets/styles_app.dart';
import 'package:pmsn/routes.dart';
import 'package:pmsn/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const LoginScreen(),
      routes: getRoutes(),
      theme: StylesApp.lightTheme(context)
        //'/dash':()

      
    );
  }
}
