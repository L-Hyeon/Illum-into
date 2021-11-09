import 'package:flutter/material.dart';
import 'package:untitled/widgets/LogIn.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      home: LogIn()
    );
  }
}

