import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;

  const AnswerButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child:  const Text(buttonText),
      style: ElevatedButton.styleFrom(

      ),
    );
  }
}
