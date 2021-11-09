import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff01c7ae),
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
