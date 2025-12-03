import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/global/appbar.dart';

class partyprediction extends StatelessWidget {
  const partyprediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1("Party Prediction"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  coustomcontainer(
                    votes: "7",
                  ),
                  coustomcontainer(
                    votes: "7",
                  ),
                  coustomcontainer(
                    votes: "7",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "List of people",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.15),
                ),
              ),
              Column(
                children: [
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                  selection(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ]
        ),
      ),
    );
  }
}
