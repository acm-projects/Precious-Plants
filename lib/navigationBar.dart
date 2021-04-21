import 'package:flutter/material.dart';
import 'main.dart';
import 'pages/saved.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Precious Plants",
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  int _selectedItem = 0;
  List<Widget> _tabs = <Widget>[
    //CameraPage();
    SavedPage(),
    MainPage(),
    //NotificationPage();
    //SettingsPage();
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _tabs.elementAt(_selectedItem)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            title: Text('Camera'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded, color: Colors.white),
            title: Text('Bookmark'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, color: Colors.white),
            title: Text('Home'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon:
            Icon(Icons.notifications_outlined, color: Colors.white),
            title: Text('Notifications'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded, color: Colors.white),
            title: Text('Settings'),
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedItem,
        onTap: _onItemTap,
      ),
    );
  }
}