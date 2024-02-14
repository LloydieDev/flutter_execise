import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;

  const Answer({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)
      ),
      child: Text(buttonText),
    );
  }
}
