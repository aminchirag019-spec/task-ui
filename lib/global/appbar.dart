import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/pages/contribution.dart';
import 'package:task_ui/pages/homescreen.dart';
import 'package:task_ui/pages/information.dart';
import 'package:task_ui/pages/information2.dart';
import 'package:task_ui/utils/utilities.dart';

import '../pages/PartyPrediction.dart';

PreferredSizeWidget appbar1 (String title){

  return AppBar(
    leading:Icon(GIcon.menu) ,
    title: Text(title,
    style: GoogleFonts.roboto(
      fontSize: 20,
      letterSpacing: 0.15,
      height: 100
    ),
    ),
    backgroundColor: Color(0xFFFFFFFF),
    elevation: 4,
    actions: [
      Icon(GIcon.notifi),
      SizedBox(width: 15,),
      CircleAvatar(
        backgroundImage: AssetImage(
            "assets/images/profile.png"
        ),
      ),
      SizedBox(width: 15,)
    ],
  );

}

class coustomcontainer extends StatelessWidget {

  @override
  final String votes;

  @override
  coustomcontainer({
    super.key,
    required this.votes

});


  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Container(
        width: width(context)*0.12,
        height:height(context)*0.11,
        padding: EdgeInsets.all(5),
        decoration:
        BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                //blurRadius: 2,
               // offset: Offset(0, 2)
              )
            ],
        )
        ,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => contribution(),));
              },
              child:Image(image:AssetImage("assets/images/partyimage.png",),width: 40,height: 50,
              ),
              ),
            ),
            Text("$votes Votes",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
            )
          ],
        ),
       // margin:EdgeInsets.only(right: 30),
            ),
      );
  }
}

class selection extends StatelessWidget {
  const selection({super.key});



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height(context)*0.05,
          width:width(context)*0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage("assets/images/profile2.png"),
                ),
                SizedBox(width: 19,),
                Text("Name Surname",
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 9,),
        Container(
          height:height(context)*0.06,
          width:width(context)*0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select"),
                Icon(GIcon.downarrow)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class addcontribution extends StatelessWidget {
  const addcontribution({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width(context)*1,
      height: height(context)*0.35,
      padding: EdgeInsets.all(19),
      //margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage:AssetImage("assets/images/profile2.png"),
              ),
              SizedBox(width: 30,),
              Expanded(
                  child:Text("Name required",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  )),
              Icon(GIcon.downarrow)
            ],
          ),
         // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
             height:height(context)*0.14,
             padding: EdgeInsets.all(12),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Color(0xFFF4EDEB)
             ),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "text here",
                ),
              ),
            ),
          ),
          SizedBox(height:10),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => information(),));
            },
                style: ElevatedButton.styleFrom(
                  //padding: EdgeInsets.symmetric(horizontal:12,vertical: 12),
                  backgroundColor:  Color(0xFFA3471C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  )
                ),
                child:Text(
                    "Save",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                    )),
          )
        ],
      ),
    );
  }
}


class contributionsnames extends StatelessWidget {
  const contributionsnames({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:height(context)*0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile2.png"),
            ),
            SizedBox(width: 15,),
            Expanded(child:Text("Name Surname",
            style: GoogleFonts.roboto(
              fontWeight:FontWeight.w600,
            ),
            )),
            Icon(Icons.message),
            SizedBox(width: 20,),
            Icon(GIcon.downarrow)
          ],
        ),
      ),
    );
  }
}

class informationpage extends StatelessWidget {
  const informationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height(context)*0.32,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile2.png"),
                ),
                SizedBox(width: 12,),
                Expanded(
                    child: Text("Name Required")),
                Icon(GIcon.msg),
                SizedBox(width: 20,),
                Icon(GIcon.downarrow),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height:height(context)*0.06,
                  width:width(context)*0.43,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Caste",
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height:height(context)*0.06,
                  width:width(context)*0.43,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: width(context)*1,
              height:height(context)*0.06,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "influencer",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(GIcon.downarrow)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => information2(),));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9A4521),
                      fixedSize: Size(90,40),
                    ),
                    child: Text("Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),
                    )),
              ),
            )
          ],
        ),
      )
      ,
    );

  }
}



class informators extends StatelessWidget {
  const informators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:height(context)*0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile2.png"),
            ),
            SizedBox(width: 15,),
            Expanded(child:Text("Name Surname",
              style: GoogleFonts.roboto(
                fontWeight:FontWeight.w600,
              ),
            )),
            SizedBox(width: 20,),
            Icon(GIcon.downarrow),
          ],
        ),
      ),
    );
  }
}



class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context)*0.5,
      height:height(context)*0.37,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile2.png"),
                ),
                SizedBox(width: 12,),
                Expanded(
                    child: Text("Name Required")),
                Icon(GIcon.msg),
                SizedBox(width: 20,),
                Icon(GIcon.downarrow)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height:height(context)*0.06,
                  width:width(context)*0.43 ,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Caste",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                    height:height(context)*0.06,
                    width:width(context)*0.43,
                    child: TextField(
                    keyboardType:TextInputType.numberWithOptions(
                      signed: true,
                      decimal: true
                    ),
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                height:height(context)*0.06,
                  width:width(context)*0.43,
                 child: TextField(
                    decoration: InputDecoration(
                        labelText: "Select Family",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                    height:height(context)*0.06,
                    width:width(context)*0.43,
                    child: TextField(
                    decoration: InputDecoration(
                        labelText: "Family Member",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:1),
              child: Container(
                width:width(context)*0.9,
                height:height(context)*0.06,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "influencer",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(GIcon.downarrow)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => homescreen(),));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9A4521),
                      fixedSize: Size(90,40),
                    ),
                    child: Text("Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    )),
              ),
            )
          ],
        ),
      )
      ,
    );
  }
}


class cards extends StatelessWidget {
  const cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                        height: height(context)*0.082,
                        width:width(context)*0.17,
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
                        height: height(context)*0.082,
                        width:width(context)*0.17,
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
    );
  }
}


class slider extends StatelessWidget {
  const slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      //width: MediaQuery.of(context).size.width*0.9,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/slider.png"), fit: BoxFit.fill)),
    );
  }
}

class quickactionUI extends StatelessWidget {
  const quickactionUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                            height:height(context)*0.1,
                            width:width(context)*0.3,
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
                                                partyprediction(),
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
                                              partyprediction(),
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
    );
  }
}
