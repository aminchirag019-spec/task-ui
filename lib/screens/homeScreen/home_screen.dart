import 'package:flutter/material.dart' hide Slider;
import 'package:google_fonts/google_fonts.dart';

import 'common_class.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EDEB),
      //appBar: appbar1("Election"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Announcements",
                style:
                    GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.57, crossAxisCount: 1),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Slider();
                      }),
                ),
              ),
            QuickActionUI(),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "Upcoming elections",
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
            ),
            SizedBox(height: 10,),
            Cards(),
            Cards()
          ]
        ),
      ),
    );
  }
}
