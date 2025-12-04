import 'package:flutter/material.dart';
import 'package:task_ui/global/appbar.dart';

class information2 extends StatelessWidget {
  const information2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1("Add information"),
        backgroundColor: Color(0xFFF4EDEB),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (index==0){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: info(),
                );
              }
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:5),
                child: contributionsnames(),
              );
            },
            itemCount: 15,
          )
      ),
    );
  }
}
