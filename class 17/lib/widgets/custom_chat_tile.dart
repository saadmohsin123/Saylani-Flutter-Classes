import 'package:flutter/material.dart';

class CustomChatTile extends StatelessWidget {
  final String? name;
  final String message;
  final String time;
  const CustomChatTile({
    super.key,
     this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 196, 235, 255),
        leading: const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueAccent,
        ),
        title: Text(name ?? "Anonymous"),
        subtitle: Text(message),
        trailing: Text(time),
      ),
    );
  }
}
