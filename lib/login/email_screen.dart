import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/Widgets/Formbutton.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/login/password_screen.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  String _email = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailcontroller.addListener(() {
      setState(() {
        _email = _emailcontroller.text;
      });
    });
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose(); // saves memory
  }

  String? isvalid() {
    // checks if the email is valid
    if (_email.isEmpty) return null;
    final regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!regExp.hasMatch(_email)) {
      return "Email is not valid.";
    }
    return null;
  }

  void _onscaffoldtap() {
    FocusScope.of(context).unfocus();
  }

  void _onsubmit() {
    if (_email.isEmpty || isvalid() != null) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onscaffoldtap,
      child: Scaffold(
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
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                cursorColor: Theme.of(context).primaryColor,
                controller: _emailcontroller,
                decoration: InputDecoration(
                  errorText: isvalid(),
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
              GestureDetector(
                onTap: _onsubmit,
                child: FormButton(
                  disabled: _email.isEmpty || isvalid() != null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
