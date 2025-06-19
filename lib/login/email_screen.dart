import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  String _username = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernamecontroller.addListener(() {
      setState(() {
        _username = _usernamecontroller.text;
      });
    });
  }

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
              controller: _usernamecontroller,
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
            Gaps.v16,
            FractionallySizedBox(
              widthFactor: 1,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(vertical: Sizes.size16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      _username
                          .isEmpty // changes color depends on the user name is empthy or not
                      ? Colors.grey
                      : Theme.of(context).primaryColor,
                ),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
