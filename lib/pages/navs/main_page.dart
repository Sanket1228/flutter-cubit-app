import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navs/bar_page.dart';
import 'package:flutter_cubit/pages/navs/my_page.dart';
import 'package:flutter_cubit/pages/navs/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List page = [BarPage(), SearchPage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.apps)),
        BottomNavigationBarItem(
            title: Text("Bar"), icon: Icon(Icons.bar_chart)),
        BottomNavigationBarItem(
            title: Text("Search"), icon: Icon(Icons.search)),
        BottomNavigationBarItem(title: Text("My"), icon: Icon(Icons.person)),
      ]),
    );
  }
}
