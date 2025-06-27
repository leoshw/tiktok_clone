import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.disabled});

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(vertical: Sizes.size16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:
              disabled // changes color depends on the user name is empthy or not
              ? Colors.grey
              : Theme.of(context).primaryColor,
        ),
        child: AnimatedDefaultTextStyle(
          // animated container does not animate its child
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: 14,
            color: disabled ? Colors.grey.shade300 : Colors.white,
            fontWeight: FontWeight.w700,
          ),
          child: Text("Next", textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
