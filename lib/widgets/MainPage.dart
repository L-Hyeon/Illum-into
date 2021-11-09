import 'package:flutter/material.dart';
import 'package:untitled/widgets/BottomBar.dart';
import 'package:untitled/widgets/DrawerMenu.dart';
import 'package:untitled/widgets/HomePage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                print("Go to Drawer Menu");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerMenu()));
              },
            ),
            title: Text("TEST"),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff01c7ae),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Text("2번"),
              Text("3")
            ],
          ),
          bottomNavigationBar: BottomBar(),
        )
    );
  }
}
