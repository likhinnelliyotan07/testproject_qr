import 'package:flutter/material.dart';

class CommonElevatedButton  extends StatelessWidget{
  final String text;
  final VoidCallback onClicked;

  const CommonElevatedButton({
    super.key,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
      ),
      onPressed: onClicked,
      child: Text(text),
    );
  }
} 