import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  var friendList = [];
  addvalue() {
    setState(() {
      friendList.add("SAAD");
    });
  }

  TextEditingController friendListController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: friendListController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  friendList.add(friendListController.text);
                  friendListController.clear();
                });
              },
              child: const Text("Add Item"),
            )
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: friendList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 2),
                child: ListTile(
                  tileColor: Colors.lightBlueAccent,
                  title: Text(friendList[index]),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                        friendList.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete)),
                ),
              );
            },
          ),
          //   child: Column(
          //   children: [
          //     Text(
          //       "$counter",
          //       style: TextStyle(fontSize: 40),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           counter++;
          //         });
          //       },
          //       child: Text("Add Value"),
          //     )
          //   ],
          // )),
        ));
  }
}
