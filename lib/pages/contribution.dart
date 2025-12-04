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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                addcontribution(),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height:MediaQuery.of(context).size.height*0.45,
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: contributionsnames(),
                      );
                    },
                      itemCount: 30,),
                  ),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
