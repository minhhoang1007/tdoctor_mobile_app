import 'package:flutter/material.dart';
import 'package:tdoctor_mobile_app/screen/home/PageHomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    PageHomeScreen(),
    Text(
      'Lịch khám',
      style: optionStyle,
    ),
    Text(
      'Bài viết',
      style: optionStyle,
    ),
    Text(
      'Bộ sưu tập',
      style: optionStyle,
    ),
    Text(
      'Hồ sơ BS',
      style: optionStyle,
    ),
    Text(
      'Menu',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Lịch khám',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Bài viết',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Bộ sưu tập',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hồ sơ bác sĩ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[800],
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: _onItemTapped,
      ),
    );
  }
}
