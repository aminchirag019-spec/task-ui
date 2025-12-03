import 'package:flutter/material.dart';
import 'package:task_ui/global/appbar.dart';

class contribution extends StatelessWidget {
  const contribution({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EDEB),
      appBar: appbar1("Add contribution"),
      body:
      Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              addcontribution(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),
              contributionsnames(),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),

    );
  }
}
