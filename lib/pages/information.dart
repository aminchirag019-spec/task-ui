import 'package:flutter/material.dart';
import 'package:task_ui/global/appbar.dart';


class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1("Add information"),
      backgroundColor: Color(0xFFF4EDEB),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              informationpage(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
              informators(),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
