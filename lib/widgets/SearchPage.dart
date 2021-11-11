import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var isSortedWithTrending = true;

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: TextField(
                      cursorColor: Color(0xff01c7ae),
                      decoration: InputDecoration(
                        hintText: "검색어를 입력하세요",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black54,
                        ),
                        hoverColor: Color(0xff01c7ae)
                      ),
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Roboto",
                        color: Colors.black54
                      ),
                      // onChanged: (){
                      //
                      // },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Text(
                        "인기",
                        style: TextStyle(
                            color: Color(0xff01c7ae),
                            fontFamily: "Ydestreet",
                            fontSize: 20
                        ),
                      textAlign: TextAlign.start,
                      )
                    ]
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 100,
                            child: InkWell(
                                onTap: (){
                                  // 검색어에 이걸 입력
                                },
                                child: Text(
                                    "서울대",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Ydestreet",
                                        fontSize: 20
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 100,
                            child: InkWell(
                                onTap: (){
                                  // 검색어에 이걸 입력
                                },
                                child: Text(
                                    "카이스트",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Ydestreet",
                                        fontSize: 20
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 100,
                            child: InkWell(
                                onTap: (){
                                  // 검색어에 이걸 입력
                                },
                                child: Text(
                                    "아기",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Ydestreet",
                                        fontSize: 20
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 100,
                            child: InkWell(
                                onTap: (){
                                  // 검색어에 이걸 입력
                                },
                                child: Text(
                                    "공대",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Ydestreet",
                                        fontSize: 20
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 100,
                            child: InkWell(
                                onTap: (){
                                  // 검색어에 이걸 입력
                                },
                                child: Text(
                                    "유학생",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Ydestreet",
                                        fontSize: 20
                                    )
                                )
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
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
