import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/pages/contribution.dart';
import 'package:task_ui/pages/homescreen.dart';
import 'package:task_ui/pages/information.dart';
import 'package:task_ui/pages/information2.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Container(
        width: 100,
        height: 90,
        padding: EdgeInsets.all(8),
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
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage("assets/images/profile2.png"),
                ),
                SizedBox(width: 10,),
                Text("Name Surname",
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select"),
                Icon(Icons.keyboard_arrow_down)

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
      width:double.infinity,
      height: 285,
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
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
         // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
             height: 140,
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
      height: 60,
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
            Icon(Icons.keyboard_arrow_down)
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
      height: 265,
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
                Icon(Icons.message),
                SizedBox(width: 20,),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 60,
                  width:180 ,
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
                  height: 60,
                  width:180 ,
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
              width: double.infinity,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "influencer",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.keyboard_arrow_down)
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
      height: 60,
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
            Icon(Icons.keyboard_arrow_down)
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
      width: double.infinity,
      height: 350,
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
                Icon(Icons.message),
                SizedBox(width: 20,),
                Icon(Icons.arrow_downward)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 60,
                  width:180 ,
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
                  height: 60,
                  width:180 ,
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
                  height: 60,
                  width:180 ,
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
                  height: 60,
                  width:180 ,
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
                width:380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "influencer",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.keyboard_arrow_down)
                  ),
                ),
              ),
            ),
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
