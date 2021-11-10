import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';
import 'package:untitled/widgets/DrawerMenu.dart';

import 'package:untitled/widgets/LogIn.dart';

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
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            bottom: PreferredSize(
              child: Divider(
                height: 1,
                color: Colors.black12,
              ),
              preferredSize: Size.fromHeight(1),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black38,
                size: 35,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  Transition(
                    child: DrawerMenu(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT
                  )
                );
              },
            ),
            title: Container(
              width: 150,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black12
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                indicatorPadding: EdgeInsets.all(3),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                tabs: <Widget>[
                  Container(
                    width: 75,
                    child: Text(
                      "트렌딩",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto"
                      ),
                      textAlign: TextAlign.center,
                    )
                  ),
                  Container(
                    width: 75,
                    child: Text(
                    "최신",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Roboto"
                      ),
                      textAlign: TextAlign.center,
                    )
                  )
                ],
              ),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            actions: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LogIn()), (route) => false);
                },
                child: Text(
                  "xx"
                ),
              )
            ]
          ),
          body: TabBarView(
            children: [
              ListPanel(standard: "트렌딩"),
              ListPanel(standard: "최신",)
            ],
          ),
        )
      )
    );
  }
}

class ListPanel extends StatelessWidget {
  final String standard;
  ListPanel ({required this.standard, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              "${standard}",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Ydestreet",
                fontWeight: FontWeight.bold
              )
            ),
          ]
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: List.generate(20, (index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.black12
                      )
                  ),
                  margin: EdgeInsets.all(5),
                  width: 170,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img.jpg',
                        width: 170,
                        height: 100,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black12
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Flexible(
                            child: Text(
                              "xxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 15,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.fade
                            ),
                          )
                        ]
                      ),
                      SizedBox(height: 8),
                      Divider(
                        height: 1,
                        color: Colors.black12,
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 5),
                          Text(
                            "+3%",
                            style: TextStyle(
                              color: Color(0xff01c7ae),
                              fontSize: 15,
                              fontFamily: "Roboto",
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "58%달성",
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 9,
                              fontFamily: "Roboto"
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.favorite,
                            size: 13,
                            color: Colors.black,
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Roboto"
                            )
                          )
                        ]
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}

class Article{
  int id = 0;
  String title = '';
  String content = '';
  int targetPrice = 0;
  int curPrice = 0;
  int pricePercentage = 0;
  int curInvester = 0;
  int curSponsor = 0;
  int curLike = 0;
  double interest = 1.0;
}

List temp = <Article>[
  Article()
];