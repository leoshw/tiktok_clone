import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/Widgets/Formbutton.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  String _email = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernamecontroller.addListener(() {
      setState(() {
        _email = _usernamecontroller.text;
      });
    });
  }

  @override
  void dispose() {
    _usernamecontroller.dispose();
    super.dispose();  // saves memory
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v40,
            Text(
              "What is your email?",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),

            Gaps.v16,
            TextField(
              cursorColor: Theme.of(context).primaryColor,
              controller: _usernamecontroller,
              decoration: InputDecoration(
                hint: Text("Type your email"),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
            Gaps.v16,
            FormButton(disabled: _email.isEmpty),
          ],
        ),
      ),
    );
  }
}
