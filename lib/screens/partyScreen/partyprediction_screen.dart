import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common_party.dart';

class PartyPredictionScreen extends StatelessWidget {
  const PartyPredictionScreen({super.key});

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
                Expanded(child: CoustomContainer(votes: "7")),
                 SizedBox(width: 8),
                Expanded(child: CoustomContainer(votes: "7")),
                 SizedBox(width: 8),
                Expanded(child: CoustomContainer(votes: "7")),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical:5),
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
                itemCount: 9,
                itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Selection(),
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
