import 'package:flutter/material.dart';
import 'package:task_ui/Bottomnavbar/bottom.dart';
import 'package:task_ui/pages/PartyPrediction.dart';
import 'package:task_ui/pages/homescreen.dart';
import 'package:task_ui/pages/information.dart';
import 'package:task_ui/pages/information2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Bottom(),
    );
  }
}

