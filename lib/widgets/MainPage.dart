import 'package:flutter/material.dart';
import 'package:untitled/widgets/DrawerMenu.dart';
import 'package:untitled/widgets/HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  PageController _pageController = PageController();

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState(){
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page){
          setState(() {
            _selectedPage = page;
          });
        },
        children: [
          HomePage(),
          Container(
              child: Center(
                child:Text("Search"),
              )
          ),
          Container(
              child: Center(
                  child:Text("Personal")
              )
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            TabButton(
              icon: Icons.home,
              pageNumber: 0,
              selectedPage: _selectedPage,
              onPressed: (){
                _changePage(0);
              },
            ),
            TabButton(
              icon: Icons.search,
              pageNumber: 1,
              selectedPage: _selectedPage,
              onPressed: (){
                _changePage(1);
              },
            ),
            TabButton(
              icon: Icons.person,
              pageNumber: 2,
              selectedPage: _selectedPage,
              onPressed: (){
                _changePage(2);
              },
            )
          ],
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final IconData icon;
  final int selectedPage;
  final int pageNumber;
  final void Function() onPressed;
  TabButton({required this.icon, required this.selectedPage, required this.pageNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 125,
        child: Icon(
          icon,
          size: 35,
          color: selectedPage == pageNumber ? Colors.black : Colors.black38,
        ),
      ),
    );
  }
}
