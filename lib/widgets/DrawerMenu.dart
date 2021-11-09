import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
            "바로가기",
            style: TextStyle(
              color: Colors.cyanAccent.shade700,
              fontFamily: "Ydestreet",
              fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                child: Text(
                  "투자하기",
                  style: TextStyle(
                    fontFamily: "Ydestreet",
                    fontSize: 20,
                  ),
                ),
                padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "기부하기",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "신청하기",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "내 포트폴리오",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "대학교별",
              style: TextStyle(
                color: Colors.cyanAccent.shade700,
                fontFamily: "Ydestreet",
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "서울대학교",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "카이스트",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "고려대학교",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "연세대학교",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "포스텍",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "성균관대학교",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "한양대학교",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "계열별",
              style: TextStyle(
                color: Colors.cyanAccent.shade700,
                fontFamily: "Ydestreet",
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "공학",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "자연과학",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "상경",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "인문학",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Container(
                  child: Text(
                    "예체능",
                    style: TextStyle(
                      fontFamily: "Ydestreet",
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 30)
              ),
              onTap: (){
                //해당 메뉴로 이동
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
