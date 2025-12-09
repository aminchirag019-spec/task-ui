import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'appbar.dart';

class BottomShell extends StatelessWidget {
  final Widget child;
  final String location; // passed from ShellRoute
  static final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  const BottomShell({super.key, required this.child, required this.location});

  static const List<String> _tabs = [
    '/HomeScreen',
    '/PartyScreen',
    '/ContributionScreen',
    '/FieldScreen',
    '/InformationScreen',
  ];

  static const List<String> _titles = [
    "HomeScreen",
    "PartyPrediction",
    "Contribution",
    "Field",
    "Add information",
  ];

  int _indexFromLocation(String loc) {
    if (loc == '/' || loc.isEmpty) return 0;

    // loop which is contain all tabs and iterationg continuously and give the current index
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
      key: _drawerKey,
      backgroundColor: Color(0xFFF4EDEB),
      appBar: appbar1(_titles[currentIndex], _drawerKey),
      drawer: Drawer(
        width: 240,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color:Color(0xFFF4EDEB)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60,vertical: 40),
                child:Image(image: AssetImage("assets/images/bjp.png"))
              ),
            ),
            ListTile(leading: 
              CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png"),),
              trailing: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(" Your profile",
                style: TextStyle(
                  fontSize: 15
                ),
                ),
              ),
              ),
            ListTile(title: Text("Option 2")),
          ],
        ),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:Colors.orange,
        onTap: (i) {
          if (i == currentIndex) return ;
          GoRouter.of(context).go(_tabs[i]);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote), label: "Party"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Contribution"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Field",),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: "Info"),
        ],
      ),
    );
  }
}
