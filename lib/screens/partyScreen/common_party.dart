import 'package:flutter/material.dart';

import '../../utilities/media_query.dart';
class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  final TextEditingController nameController = TextEditingController();

  String? _selectedPartyImage;
  String? _selectedPartyName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height(context) * 0.05,
          width: width(context) * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/men.png"),
                ),
                SizedBox(width: 19),
                Expanded(
                  child: TextFormField(
                    controller: nameController,
                    enableInteractiveSelection: false,
                    decoration:  InputDecoration(
                      hintText: "Name Surname",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 9),

        Container(
          height: height(context) * 0.06,
          width: width(context) * 0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: PopupMenuButton<_PartyData>(
            onSelected: (value) {
              setState(() {
                _selectedPartyImage = value.imagePath;
                _selectedPartyName  = value.name;
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: _PartyData(
                  name: 'BJP',
                  imagePath: 'assets/images/bjp.png',
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/bjp.png",
                      height: 25,
                      width: 25,
                    ),
                    Text('BJP'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: _PartyData(
                  name: 'Congress',
                  imagePath: 'assets/images/congress.png',
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/congress.png",
                      height: 25,
                      width: 25,
                      alignment: Alignment.topLeft,
                    ),
                    Text('Congress'),
                  ],
                ),
              ),
            ],

            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_selectedPartyImage != null)
                    Row(
                      children: [
                        Image.asset(
                          _selectedPartyImage!,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 6),
                        Text(_selectedPartyName ?? 'Select'),
                      ],
                    )
                  else
                    Text("Select"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),

        SizedBox(width: 5),

      ],
    );
  }
}

class _PartyData {
  final String name;
  final String imagePath;

  _PartyData({required this.name, required this.imagePath});
}

class CoustomContainer extends StatelessWidget {
  final String votes;

  CoustomContainer({super.key, required this.votes});

  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Container(
        width:200,
        height: 100,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              //blurRadius: 2,
              // offset: Offset(0, 2)
            )
          ],
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage(
                  "assets/images/party_image.png",
                ),
                width: 40,
                height: 50,
              ),
            ),
            Text(
              "$votes Votes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
        // margin:EdgeInsets.only(right: 30),
      ),
    );
  }
}
