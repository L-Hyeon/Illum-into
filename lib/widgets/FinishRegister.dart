import 'package:flutter/material.dart';
import 'package:untitled/widgets/MainPage.dart';
import 'package:untitled/widgets/Register.dart';

class FinishRegister extends StatelessWidget {
  final totalUserNumber;
  final name;
  const FinishRegister({Key? key, @required this.name, this.totalUserNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 130),
          Text(
            "환영합니다 ${name}님!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Ydestreet"
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "${totalUserNumber}명 이상의 대학생 인재들을 지금 바로\n만나보세요",
            style: TextStyle(
              color: Colors.black54,
              fontFamily: "Ydestreet",
              fontSize: 15
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 330,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    print("Go to MainPage");
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainPage()), (route) => false);
                  },
                  color: Color(0xff01c7ae),
                  child: Text(
                    "홈으로 이동",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Ydestreet"
                    ),
                  ),
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}

