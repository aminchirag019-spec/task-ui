import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common_information.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final List<InfoData> _info = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appbar1("Add information"),
      backgroundColor: const Color(0xFFF4EDEB),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InformationPage(
              onSave: (infoData) {
                setState(() {
                  _info.add(infoData);
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _info.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InformationOutputTile(
                      data: _info[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
