import 'package:first_project/home_view.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});
  gridcolor() {
    Container(
      color: Colors.amber,
      height: 500,
    );
    Container(
      color: Colors.blue,
      height: 500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            child: Text("Go to Second Screen")),
      ),
      // body: GridView.builder(
      //     itemCount: 18,
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       mainAxisSpacing: 10,
      //       crossAxisSpacing: 10,
      //     ),
      //     itemBuilder: (context, index) {
      //       return Container(
      //         color: Colors.amber,
      //       );
      //     }),
    );
  }
}
