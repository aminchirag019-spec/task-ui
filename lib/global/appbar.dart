import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List image=[
  "profile.png"
];
PreferredSizeWidget appbar1 (String title){

  return AppBar(
    leading:Icon(Icons.menu) ,
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
      Icon(Icons.notification_add),
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


