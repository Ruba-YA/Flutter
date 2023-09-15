import 'package:flutter/material.dart';
import 'package:lab1/Second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Demo"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.blue,
            child: Text(
              "Hello,Flutter!",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Image.asset(
            "assets/logo.png",
            width: 100,
            height: 100,
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
          }, child: Text("Go to Second Screen"))
        ],
      )),
    );
  }
}
