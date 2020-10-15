import 'package:card_book/pages/bookTable/book_table_page.dart';
import 'package:card_book/pages/createCardBook/create_card_book_page.dart';
import 'package:card_book/pages/discovery/discovery_page.dart';
import 'package:card_book/pages/home/home_page.dart';
import 'package:card_book/pages/my/my_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<BottomNavigationBarItem> bottomNavBarList = [
    BottomNavigationBarItem(title: Text("首页"), icon: Container()),
    BottomNavigationBarItem(title: Text("书架"), icon: Container()),
    BottomNavigationBarItem(title: Text(""), icon: Icon(CupertinoIcons.add)),
    BottomNavigationBarItem(title: Text("发现"), icon: Container()),
    BottomNavigationBarItem(title: Text("我"), icon: Container()),
  ];
  final pages = [HomePage(),BookTablePage(),CreateCardBookPage(),DiscoveryPage(),MyPage()];
  int _currentPage = 0;

  // TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavBarList,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              print(index);
            },
          ),
          body: pages[_currentPage],
        ),
      ),
    );
  }
}
