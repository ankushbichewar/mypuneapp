import 'package:flutter/material.dart';
import 'package:mypuneapp/inheritedfile.dart';
import 'package:mypuneapp/loginpage.dart';
import 'package:mypuneapp/signuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SharedData(
      data: 0,
      child: MaterialApp(
     routes:{
      "/login":(context)=> const Login(),
     },
      home:const  NewAccount(),
      debugShowCheckedModeBanner: false,
    ));
  }
}


