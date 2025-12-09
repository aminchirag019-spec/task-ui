
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/icons.dart';
import '../../utilities/media_query.dart';


class QuickActionUI extends StatelessWidget {
  const QuickActionUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Quick Actions",
            style:
            GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
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
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          title: Text("Add family"),
                          content: Container(
                            height: height(context) * 0.1,
                            width: width(context) * 0.3,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Enter Family Name",
                                  suffixStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
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
                                ElevatedButton(
                                    onPressed: () => context.pop('/'),
                                    child: Text(
                                      "Cancel",
                                      style:
                                      TextStyle(color: Color(0xFF9A4521)),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    context.push('/PartyScreen');
                                  },
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                  ),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(color: Colors.white),
                                  ),
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
    );
  }
}


class Slider extends StatefulWidget {

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  int currentIndex = 0;

  final PageController controller =PageController();

  final List images =[
    "assets/images/slider.png",
    "assets/images/slider.png",
    "assets/images/slider.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:height(context)*0.23,
          child: PageView.builder(
            controller: controller,
            pageSnapping: true,
            itemCount: images.length,
            onPageChanged:(index) {
              setState(() {
                currentIndex = index;
              });
            } ,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 5,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            List.generate(images.length,(index){
              final isActive = index == currentIndex;
              return AnimatedContainer(duration:
              Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: isActive ? 10 :8,
                height: isActive ? 10:8,
                decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: isActive ? Colors.orange : Colors.grey
                ),
              );

            })
        )
      ],
    );
  }
}




class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
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
                        width: width(context) * 0.17,
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
                            GestureDetector(onTap:() {
                              context.push('/PartyScreen');
                            },
                                child:Text(
                                  "Party\nprediction",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      fontSize: 10, fontWeight: FontWeight.bold),))
                          ],
                        ),
                        margin: EdgeInsets.only(bottom: 30),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 82,
                        width: width(context) * 0.17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0x129A4521)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              GIcon.msg,
                              size: 20,
                              color: Color(0xFF8C3A0A),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(onTap: () {
                              context.push('/ContributionScreen');

                            },child: Text(
                              "Add\ncontribution",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(bottom: 30),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 82,
                        width: width(context) * 0.17,
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
                            GestureDetector(
                              onTap: () {
                                context.push('/FieldScreen');
                              },child: Text(
                              "Add\ninformation",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            )
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
    );
  }
}

