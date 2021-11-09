import 'package:flutter/material.dart';
import 'package:untitled/widgets/FinishRegister.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name = '이민석';
  var email = '';
  var pw = '';
  var confirmPw = '';
  var isCoperation = false;
  var totalUserNumber = "100";

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
                    "INTO 회원가입",
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Ydestreet",
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    )
                )
              ],
            ),
            SizedBox(height: 50),
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
                            color: Colors.black45,
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
            ),
            SizedBox(height: 10),
            Divider(
              height: 10,
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              "또는",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 15,
                fontFamily: "Ydestreet",
              ),
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
                    padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: "이름"
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "E-Mail"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: "PW"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),TextField(
                          decoration: InputDecoration(
                              labelText: "PW 확인"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                "* 영문, 숫자, 특수문자를 포함한 8자 이상",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 10
                                )
                            )
                          ]
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                value: isCoperation,
                                onChanged: (value){
                                  setState((){
                                    isCoperation = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "법인 채용형 투자자입니다",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                        ButtonTheme(
                          minWidth: 330,
                          height: 50,
                          child: RaisedButton(
                            onPressed: (){
                              print("Go to MainPage");
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>FinishRegister(name: this.name, totalUserNumber: this.totalUserNumber)), (route)=>false);
                            },
                            color: Color(0xff01c7ae),
                            child: Text(
                              "회원가입",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Ydestreet"
                                //일단 임의로 내가 가지고 있는 폰트 씀
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
