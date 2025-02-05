import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SendButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: "Send",
      child: Icon(Icons.send),
    );
  }
}
