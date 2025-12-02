import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/global/appbar.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EDEB),
      appBar: appbar1("Election"),
      body: ListView(
        children: [
          Column(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 370,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage('assets/images/Profile.jpg'),
                                fit:BoxFit.cover
                            )),
                      ),
                      Container(
                        height: 180,
                        width: 370,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: 370,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                            image:DecorationImage(image: AssetImage('assets/images/slider.png'))
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quick Actions",
                      style: GoogleFonts.roboto(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    title: Text("Add family"),
                                    content: Container(
                                      height: 100,
                                      width: 300,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Enter Family Name",
                                            suffixStyle: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always),
                                      ),
                                    ),
                                    actions: [
                                      Divider(
                                        thickness: 2,
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          homescreen(),
                                                    ));
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Color(0xFF9A4521)),
                                              )),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        homescreen(),
                                                  ));
                                            },
                                            child: Text(
                                              "Save",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 50, vertical: 12),
                                                backgroundColor: Color(0xFF9A4521)),
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              "Add family",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Text(
                        "Upcoming elections",
                        style:
                        GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 2,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Text(
                              "23",
                              style: GoogleFonts.publicSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9A4521)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Aug",
                              style: GoogleFonts.publicSans(
                                  color: Color(0xFF9A4521), fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Election name here",
                              style: GoogleFonts.publicSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.25),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "12 Aug 2023 | Pratap nagar Nagpur",
                              style: GoogleFonts.publicSans(
                                  fontSize: 13, letterSpacing: 0.25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_view,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Party\nprediction",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.message,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Add\ncontribution",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Add\ninformation",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 2,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Text(
                              "23",
                              style: GoogleFonts.publicSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9A4521)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Aug",
                              style: GoogleFonts.publicSans(
                                  color: Color(0xFF9A4521), fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Election name here",
                              style: GoogleFonts.publicSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.25),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "12 Aug 2023 | Pratap nagar Nagpur",
                              style: GoogleFonts.publicSans(
                                  fontSize: 13, letterSpacing: 0.25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_view,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Party\nprediction",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.message,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Add\ncontribution",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 82,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0x129A4521)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        size: 20,
                                        color: Color(0xFF8C3A0A),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Add\ninformation",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 30),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
