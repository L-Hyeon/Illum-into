import 'package:flutter/material.dart';
import 'package:untitled/widgets/MainPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/widgets/Register.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var email = '';
  var pw = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                  "INTO 계정",
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: "Ydestreet",
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )
                )
              ],
            ),
            Form(
              child: Theme(
                  data: ThemeData(
                      primaryColor: Colors.blueGrey,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15
                          )
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: "ID"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                          TextField(
                          decoration: InputDecoration(
                              labelText: "PW"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        ButtonTheme(
                            minWidth: 330,
                            height: 50,
                            child: RaisedButton(
                              onPressed: (){
                                toastWrongAccount();
                                print("Go to MainPage");
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainPage()), (route) => false);
                              },
                              color: Color(0xff01c7ae),
                              child: Text(
                                  "로그인",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Ydestreet"
                                    //일단 임의로 내가 가지고 있는 폰트 씀
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "계정이 없으신가요?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45
                              ),
                            ),
                            InkWell(
                              child: Text(
                                "가입하기",
                                style: TextStyle(
                                  color: Colors.blue[300],
                                  fontSize: 15,
                                  decoration: TextDecoration.underline
                                ),
                              ),
                              onTap: (){
                                // 회원가입 창으로 전환
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            ),
            SizedBox(height: 50),
            Divider(
              height: 10,
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              "SNS 로그인",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                  fontFamily: "Ydestreet"
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    print("kakao");
                    //카카오 로그인 sdk까지는 했는데
                    // 앱 패키지 ID를 모르겠음 어디서 보는지
                  },
                  child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(
                            'assets/images/kakao.png',
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kakao",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black45
                          ),
                        )
                      ]
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: (){
                    print("naver");
                    //카카오 로그인 sdk까지는 했는데
                    // 앱 패키지 ID를 모르겠음 어디서 보는지
                  },
                  child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(
                            'assets/images/naver.png',
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Naver",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black45
                          ),
                        )
                      ]
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: (){
                    print("google");
                    //카카오 로그인 sdk까지는 했는데
                    // 앱 패키지 ID를 모르겠음 어디서 보는지
                  },
                  child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(
                            'assets/images/google.png',
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black45
                          ),
                        )
                      ]
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}

void toastWrongAccount(){
  Fluttertoast.showToast(
    msg: "Please Check Your Email or PW",
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black38,
    fontSize: 15,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}
