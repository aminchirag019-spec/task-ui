import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../global/appbar.dart';

class BottomShell extends StatelessWidget {
  final Widget child;
  final String location; // passed from ShellRoute

  const BottomShell({super.key, required this.child, required this.location});

  static const List<String> _tabs = [
    '/',
    '/party',
    '/contribution',
    '/info1',
    '/info2',
  ];

  static const List<String> _titles = [
    "HomeScreen",
    "PartyPrediction",
    "Contribution",
    "Add information",
    "Add information",
  ];

  int _indexFromLocation(String loc) {
    // special-case root
    if (loc == '/' || loc.isEmpty) return 0;

    // check the other tabs (skip root at index 0)
    for (var i = 1; i < _tabs.length; i++) {
      final t = _tabs[i];
      if (loc == t || loc.startsWith('$t/') || loc.startsWith(t)) {
        return i;
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _indexFromLocation(location);


    return Scaffold(
      backgroundColor: const Color(0xFFF4EDEB),
      appBar: appbar1(_titles[currentIndex]),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          if (i == currentIndex) return;
          GoRouter.of(context).go(_tabs[i]);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote), label: "Party"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Contribution"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info 1"),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: "Info 2"),
        ],
      ),
    );
  }
}
