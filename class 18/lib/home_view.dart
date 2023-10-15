import 'package:first_project/abcview.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AbcView()));
          },
          child: Text("Go to Third Screen")),
      ),
    );
  }
}