import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/Bottomnavbar/bottom.dart';
import 'package:task_ui/global/appbar.dart';
import 'package:task_ui/pages/PartyPrediction.dart';
import 'package:task_ui/utils/utilities.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EDEB),
      appBar: appbar1("Election"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                "Announcements",
                style:
                    GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.57, crossAxisCount: 1),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return slider();
                      }),
                ),
              ),
            ),
            quickactionUI(),
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
            cards(),
            cards()
          ]
        ),
      ),
    );
  }
}
