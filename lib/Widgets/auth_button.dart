import 'package:flutter/material.dart';
import 'package:tiktok_clone/Constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const AuthButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Sizes.size14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: Sizes.size1),
        ),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: Sizes.size10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
