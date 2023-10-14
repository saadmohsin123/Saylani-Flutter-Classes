import 'package:first_project/widgets/custom_chat_tile.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomChatTile(
              name: "Saad Mohsin",
              message: "kahan hu?",
              time: "9:00 am",
            ),
            CustomChatTile(
              name: "Mohsin Bhai",
              message: "olala olala",
              time: "10:47 pm",
            ),
            CustomChatTile(
              name: "Numair Babu",
              message: "Pagal hu kiya?",
              time: "7:00 am",
            ),
            CustomChatTile(
              message: "Hi kash ap mere walid hote",
              time: "7:00 am",
            )            
          ],
        ),
      ),
    );
  }
}
