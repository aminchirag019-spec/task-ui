import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global/appbar.dart';



class partyprediction extends StatelessWidget {
  const partyprediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
     //   appBar: appbar1("Party Prediction"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: coustomcontainer(votes: "7")),
                 SizedBox(width: 8),
                Expanded(child: coustomcontainer(votes: "7")),
                 SizedBox(width: 8),
                Expanded(child: coustomcontainer(votes: "7")),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "List of people",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.15),
              ),
            ),

            // IMPORTANT: shrinkWrap + NeverScrollableScrollPhysics
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: selection(),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
