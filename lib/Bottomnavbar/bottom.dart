import 'package:flutter/material.dart';
import 'package:task_ui/pages/PartyPrediction.dart';
import 'package:task_ui/pages/contribution.dart';
import 'package:task_ui/pages/homescreen.dart';
import 'package:task_ui/pages/information.dart';
import 'package:task_ui/pages/information2.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  // We'll lazily initialize screens to avoid creating heavy objects up-front.
  // Use nullable list to store created screens.
  final List<Widget?> _screens = List<Widget?>.filled(5, null);

  // Helper to instantiate a screen by index (only called when needed)
  Widget _createScreen(int index) {
    switch (index) {
      case 0:
        return const homescreen(); // if your class isn't const, remove const
      case 1:
        return const partyprediction();
      case 2:
        return const contribution();
      case 3:
        return const information();
      case 4:
        return const information2();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Build children for IndexedStack — only create the selected screen if not yet created.
    final children = List<Widget>.generate(_screens.length, (i) {
      if (i == _selectedIndex) {
        // create on-demand and cache
        _screens[i] ??= _createScreen(i);
        return _screens[i]!;
      }
      // return already-created screen if present, otherwise a lightweight placeholder
      return _screens[i] ?? const SizedBox.shrink();
    });

    return Scaffold(
      // IndexedStack preserves state of already-created children instead of re-instantiating them.
      body: IndexedStack(
        index: _selectedIndex,
        children: children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed, // IMPORTANT for 5 items
        onTap: (index) {
          if (_selectedIndex == index) return; // avoid unnecessary rebuilds
          setState(() => _selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Party\nPrediction"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Contribution"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Info 1"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Info 2"),
        ],
      ),
    );
  }
}
