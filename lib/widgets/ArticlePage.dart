import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  var isLiked = true;
  var title = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  var userComment = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  var author = "이민석";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.favorite,
            size: 30,
            color: isLiked ? Colors.red : Colors.black,
          ),
          onPressed: (){
            //like this article
          },
        ),
        bottom: PreferredSize(
          child: Divider(
            height: 1,
            color: Colors.black38,
          ),
          preferredSize: Size.fromHeight(1),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Image.asset('assets/images/img.jpg', width: 350, height: 200, fit: BoxFit.cover),
              width: 371,
              height: 200,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "${title}",
                style: TextStyle(
                  fontFamily: "Ydestreet",
                  fontSize: 25
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/images/img.jpg'),
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "${author} 학생",
                    style: TextStyle(
                      fontSize: 15,
                    )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text(
                "${userComment}",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Ydestreet",
                  fontSize: 17
                ),
                maxLines: 2,
              )
            )
          ],
        ),
      ),
    );
  }
}
