import 'package:flutter/material.dart';

class PartyOutputScreen extends StatelessWidget {
  final String name;
  final String partyImage;
  final String partyName;

  const PartyOutputScreen({
    super.key,
    required this.name,
    required this.partyImage,
    required this.partyName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: const Text('Party Output')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("assets/images/men.png"),
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset(
                      partyImage,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 8),
                    Text(partyName),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

