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
        child: ListView.builder(
          itemBuilder: (context, index) {
              if (index==0){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: informationpage(),
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
