import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v40,
            Text(
              "Create username",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            Gaps.v16,
            Text(
              "You can always change this later.",
              style: TextStyle(fontSize: 13),
            ),
            Gaps.v16,
            TextField(
              cursorColor: Theme.of(context).primaryColor,

              decoration: InputDecoration(
                hint: Text("Type your username"),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
