import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isSortedWithTrending = true;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Color(0xff01c7ae),
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.transparent,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: 16)
            ),
            tabs: [
              Container(
                width:30,
                child: Tab(
                  child: Text(
                    "트랜딩"
                  ),
                ),
              ),
              Container(
                width:30,
                child: Tab(
                  child: Text(
                      "최신"
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
