import 'package:flutter/material.dart';
import 'common_fields.dart';

class FieldScreen extends StatefulWidget {
   FieldScreen({super.key,});


  @override
  State<FieldScreen> createState() => _FieldScreenState();
}
final List<FieldData> _fields =[];

class _FieldScreenState extends State<FieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: appbar1("Add information"),
        backgroundColor: Color(0xFFF4EDEB),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Field(
             onSave: (FieldData) {
               setState(() {
                 _fields.add(FieldData);
               });
             }
            ),
            SizedBox(height: 10,),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: FieldOutputScreen(data: _fields[index]),
              );
            },
              itemCount: _fields.length,
            )),

          ],
        ),
      ),
    );
  }
}

