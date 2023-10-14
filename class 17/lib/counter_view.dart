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
      friendList.add("");
    });
  }

  TextEditingController friendListController = TextEditingController();
  TextEditingController updateItemController = TextEditingController();
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
        child: Column(
          children: [
            Image.network("https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80"),
            // Expanded(
            //     child: Container(
            //     height: 200,
            //     color: Colors.amberAccent,
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     height: 200,
            //     color: Colors.redAccent,
            //   ),
            // ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: ListTile(
                    tileColor: Colors.lightBlueAccent,
                    title: Text(friendList[index]),
                    trailing: Wrap(children: [
                      IconButton(
                          onPressed: () {
                            updateItemController.text = friendList[index];
                            showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Updated Value"),
                                    content: TextField(
                                      controller: updateItemController,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              friendList[index] =
                                                  updateItemController.text;
                                            });
                                            updateItemController.clear();
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Update"))
                                    ],
                                  );
                                });
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              friendList.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete)),
                    ]),
                  ),
                );
              },
            ),
            Image.asset("assests/images/img.jpg")
          ],
        ),
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
    );
  }
}
