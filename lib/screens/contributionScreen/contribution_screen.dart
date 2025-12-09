import 'package:flutter/material.dart';
import 'common_class.dart';

class ContributionScreen extends StatefulWidget {
  const ContributionScreen({super.key});

  @override
  State<ContributionScreen> createState() => _ContributionScreenState();
}

class _ContributionScreenState extends State<ContributionScreen> {
  final List<String> _contribution = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDEB),
      // appBar: appbar1("Add contribution"),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            AddContribution(
              onSave: (text) {
                setState(() {
                  _contribution.add(text);
                });
              },
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: _contribution.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: ContributionsName(
                      text: _contribution[index],
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
