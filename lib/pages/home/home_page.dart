import 'package:card_book/pages/home/components/multiple_card_scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Container> tabBarList = [
    Container(
      alignment: Alignment.center,
      width: 40.0,
      child: Tab(text: "wg"),
    ),
    Container(
      alignment: Alignment.center,
      width: 40.0,
      child: Tab(text: "zx"),
    ),
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabBarList.length, vsync: this);
  }

  // final List<Container> tabBarViewList = [
  //   Container(
  //     child: Center(
  //       child: PageView(
  //         controller: PageController(
  //             initialPage: 0, keepPage: true, viewportFraction: 1.0),
  //         scrollDirection: Axis.vertical,
  //         children: [
  //           Center(
  //             child: Container(
  //               child: Text("图片1"),
  //               width: 100.0,
  //               height: 100.0,
  //               alignment: Alignment.center,
  //             ),
  //           ),
  //           Center(
  //             child: Container(
  //               child: Text("图片1"),
  //               width: 100.0,
  //               height: 100.0,
  //               alignment: Alignment.center,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   ),
  //   Container(
  //     child: Text("zx"),
  //   )
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 48.0,
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          controller: _tabController,
          tabs: tabBarList,
          isScrollable: true,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [MutipleCardScrollView(type:"wengu"),MutipleCardScrollView(type:"zhixin")],
          controller: _tabController,
        ),
      ),
    );
  }
}
