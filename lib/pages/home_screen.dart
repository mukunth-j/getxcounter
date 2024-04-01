import 'package:flutter/material.dart';
import 'package:getxcounter/pages/first_screen.dart';
import 'package:getxcounter/pages/second_screen.dart';
import 'package:getxcounter/pages/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _pages = [FirstScreen(), SecondScreen(), ThirdScreen()];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.punch_clock_sharp,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              "My Counter App",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      // -> Tis is for no state management
      // body: _pages.elementAt(_selectedIndex),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onTapSelection,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.first_page), label: "First Page"),
          BottomNavigationBarItem(
              icon: Icon(Icons.two_k), label: "Second Page"),
          BottomNavigationBarItem(
              icon: Icon(Icons.first_page), label: "Third Page")
        ],
      ),
    );
  }

  void _onTapSelection(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
