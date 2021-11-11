import 'package:flutter/material.dart';
import 'package:untitled/widgets/LogIn.dart';
import 'package:untitled/widgets/ArticlePage.dart';

class PersonalPage extends StatelessWidget {
  String name = "이민석";
  String email = "lms0000@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            bottom: PreferredSize(
              child: Divider(
                height: 2,
                color: Colors.black38,
              ),
              preferredSize: Size.fromHeight(1),
            ),
            title: Text(
              "프로필",
              style: TextStyle(
                fontFamily: "Ydestreet",
                fontSize: 25
              )
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 40),
                  CircleAvatar(
                    minRadius: 30,
                    backgroundImage: ExactAssetImage('assets/images/img.jpg')
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 200,
                        child: Text(
                          "${name}님",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Ydestreet",
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          "${email}",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black38
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 35),
                  IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Colors.black38
                    ),
                    onPressed: (){
                      //로그아웃
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LogIn()), (route) => false);
                    },
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 500,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        leading: SizedBox(width: 20),
                        centerTitle: true,
                        title: Container(
                          width: 240,
                          height: 50,
                          child: TabBar(
                            indicatorColor: Color(0xff01c7ae),
                            tabs: [
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "후원",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Ydestreet",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "찜",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Ydestreet",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "내 글",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Ydestreet",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                        bottom: PreferredSize(
                          child: Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          preferredSize: Size.fromHeight(1),
                        )
                      ),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        PersonalArticleList(),
                        PersonalArticleList(),
                        PersonalArticleList()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class PersonalArticleList extends StatelessWidget {
  const PersonalArticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      itemCount: 6,
      itemBuilder: (context, index){
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          width: 250,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: Colors.black12
            )
          ),
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlePage()));
            },
            leading: Image.asset('assets/images/img.jpg', width: 120, fit: BoxFit.cover,),
            title: Column(
              children: [
                Flexible(
                  child: Text(
                  "xxxxxxxxsssssssssxxxxxxxxxxxxxx",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Roboto",
                    ),
                  maxLines: 2,
                  )
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Text(
                      "+3%",
                      style: TextStyle(
                        color: Color(0xff01c7ae),
                        fontSize: 17,
                        fontFamily: "Roboto",
                      ),
                    ),
                    SizedBox(width: 65),
                    Text(
                      "58%달성",
                      style: TextStyle(
                          color: Colors.black26,
                          fontSize: 13,
                          fontFamily: "Roboto"
                      ),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      Icons.favorite,
                      size: 17,
                      color: Colors.black,
                    ),
                    Text(
                        "100",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Roboto"
                        )
                    )
                  ]
                )
              ]
            ),
          ),
        );
      },
    );
  }
}
