import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/icons.dart';
import '../../utilities/media_query.dart';



class FieldData {
  final String caste;
  final String phone;
  final String family;
  final String member;
  final String influencer;

  FieldData({
    required this.caste,
    required this.phone,
    required this.family,
    required this.member,
    required this.influencer,
  });
}





class FieldOutputScreen extends StatefulWidget {
  const FieldOutputScreen({
    super.key,
    required this.data,
  });

  final FieldData data;

  @override
  State<FieldOutputScreen> createState() => _InformationOutputTileState();
}

class _InformationOutputTileState extends State<FieldOutputScreen> {
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
                  SizedBox(height: 4),
                  Container(child: Text("Family: ${widget.data.family}"),),
                  SizedBox(height: 4),
                  Container(child: Text("Member: ${widget.data.member}"),),
                  SizedBox(height: 4),
                  Container(child: Text("Influencer: ${widget.data.influencer}")),
                  SizedBox(height: 4),
                ],
              ),
            ),
        ],
      ),
    );
  }
}



class Field extends StatefulWidget {
  const Field({
    super.key,
    required this.onSave,
  });


  final void Function(FieldData data) onSave;

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  final TextEditingController castecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController influencercontroller = TextEditingController();
  final TextEditingController familycontroller = TextEditingController();
  final TextEditingController membercontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * 1,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
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
                SizedBox(width: 12),
                Expanded(child: Text("Name Required")),
                Icon(GIcon.msg),
                SizedBox(width: 20),
                Icon(GIcon.downarrow),
              ],
            ),
            SizedBox(height: 20),

            // Row 1: caste + phone
            Row(
              children: [
                SizedBox(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller: castecontroller,
                    decoration: InputDecoration(
                      labelText: "Caste",
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller: phonecontroller,
                    keyboardType:TextInputType.numberWithOptions(
                      signed: true,
                      decimal: true,
                    ),
                    decoration:  InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            // Row 2: family + member
            Row(
              children: [
                SizedBox(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller: familycontroller,
                    decoration:  InputDecoration(
                      labelText: "Select Family",
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  height: height(context) * 0.06,
                  width: width(context) * 0.43,
                  child: TextFormField(
                    controller: membercontroller,
                    decoration:  InputDecoration(
                      labelText: "Family Member",
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            // Influencer
            SizedBox(
              width: width(context) * 0.9,
              height: height(context) * 0.06,
              child: TextFormField(
                controller: influencercontroller,
                decoration: InputDecoration(
                  labelText: "Influencer",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border:  OutlineInputBorder(),
                  suffixIcon: Icon(GIcon.downarrow),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Save button
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    final data = FieldData(
                      caste: castecontroller.text,
                      phone: phonecontroller.text,
                      family: familycontroller.text,
                      member: membercontroller.text,
                      influencer: influencercontroller.text,
                    );

                    widget.onSave(data);
                    castecontroller.clear();
                    phonecontroller.clear();
                    familycontroller.clear();
                    membercontroller.clear();
                    influencercontroller.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9A4521),
                    fixedSize: const Size(90, 40),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
