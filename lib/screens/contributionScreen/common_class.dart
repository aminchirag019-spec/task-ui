import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/icons.dart';
import '../../utilities/media_query.dart';



class AddContribution extends StatefulWidget {
  const AddContribution({
    super.key,
    required this.onSave,
  });

  final void Function(String text) onSave;

  @override
  State<AddContribution> createState() => _AddContributionState();
}

class _AddContributionState extends State<AddContribution> {
  final TextEditingController textcontroll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * 1,
      height: height(context) * 0.35,
      padding: const EdgeInsets.all(19),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage("assets/images/men.png"),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Text(
                  "Name required",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(GIcon.downarrow),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: height(context) * 0.14,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF4EDEB),
              ),
              child: TextFormField(
                controller: textcontroll,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "text here",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                final text = textcontroll.text.trim();
                if (text.isEmpty) return;
                widget.onSave(text);
                textcontroll.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFA3471C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                "Save",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ContributionsName extends StatelessWidget {
  const ContributionsName({
    super.key,
    required this.text,
  });

  final String text;

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/men.png"),
            ),
            const SizedBox(width: 15),

            // TEXT
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // RIGHT ICONS
            const Icon(Icons.message),
            const SizedBox(width: 20),
            Icon(GIcon.downarrow),
          ],
        ),
      ),
    );
  }
}