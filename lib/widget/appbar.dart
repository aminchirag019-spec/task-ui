import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:task_ui/utilities/media_query.dart';
import '../utilities/icons.dart';

PreferredSizeWidget appbar1(String title,GlobalKey<ScaffoldState>key) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon:  Icon(Icons.menu),
        onPressed: () {
          key.currentState?.openDrawer(); // works inside Builder
        },
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 20,
        letterSpacing: 0.15,
        height: 1.0,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 4,
    actions:  [
      Icon(GIcon.notifi),
      SizedBox(width: 15),
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/profile.png"),
      ),
      SizedBox(width: 15),
    ],
  );
}







