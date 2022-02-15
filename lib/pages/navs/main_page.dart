import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navs/bar_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/navs/my_page.dart';
import 'package:flutter_cubit/pages/navs/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List page = [HomePage(), BarPage(), SearchPage(), MyPage()];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                title: Text("Home"), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                title: Text("Bar"), icon: Icon(Icons.bar_chart)),
            BottomNavigationBarItem(
                title: Text("Search"), icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text("My"), icon: Icon(Icons.person)),
          ]),
    );
  }
}
