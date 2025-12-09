import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/icons.dart';
import '../../utilities/media_query.dart';


class InformationOutputTile extends StatefulWidget {
  const InformationOutputTile({
    super.key,
    required this.data,
  });

  final InfoData data;

  @override
  State<InformationOutputTile> createState() => _InformationOutputTileState();
}

class _InformationOutputTileState extends State<InformationOutputTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/men.png"),
                ),
                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    widget.data.caste,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),

          if (isExpanded)
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xFFF4EDEB),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text("Phone: ${widget.data.phone}")),
                  const SizedBox(height: 4),
                  Container(child: Text("Influencer: ${widget.data.influencer}")),
                  const SizedBox(height: 4),
                ],
              ),
            ),
        ],
      ),
    );
  }
}




class InfoData {
  final String caste;
  final String phone;
  final String influencer;

  InfoData({
    required this.caste,
    required this.phone,
    required this.influencer,
  });
}


class InformationPage extends StatefulWidget {
  const InformationPage({super.key,
    required this.onSave,
  });

  final void Function(InfoData data) onSave;

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  TextEditingController castecontroller = TextEditingController();

  TextEditingController Phonecontroller = TextEditingController();

  TextEditingController influencercontroll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height(context) * 0.32,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/men.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: Text("Name Required")),
                Icon(GIcon.msg),
                SizedBox(
                  width: 20,
                ),
                Icon(GIcon.downarrow),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller: castecontroller,
                    decoration: InputDecoration(
                        labelText: "Caste",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller:Phonecontroller,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: width(context) * 1,
              height: height(context) * 0.06,
              child: TextFormField(
                controller: influencercontroll,
                decoration: InputDecoration(
                    labelText: "influencer",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(GIcon.downarrow)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {
                      final data = InfoData(
                        caste: castecontroller.text,
                        phone: Phonecontroller.text,
                        influencer:influencercontroll.text,
                      );
                      widget.onSave(data);
                      castecontroller.clear();
                      Phonecontroller.clear();
                      influencercontroll.clear();
                      //
                      // String caste =castecontroller.text;
                      // String phone= Phonecontroller.text;
                      // String influencer =influencercontroll.text;
                      //
                      // context.go('/InformationOutputScreen',
                      // extra:{
                      //   'caste': caste,
                      //   'phone': phone,
                      //   'influencer':influencer,
                      // });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9A4521),
                      fixedSize: Size(90, 40),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class Informators extends StatelessWidget {
  const Informators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height(context) * 0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/men.png"),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
                child: Text(
                  "Name Surname",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                  ),
                )),
            SizedBox(
              width: 20,
            ),
            Icon(GIcon.downarrow),
          ],
        ),
      ),
    );
  }
}

