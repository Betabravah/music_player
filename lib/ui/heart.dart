import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_border,
        size: 20,
        // color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          _isFavorited = !_isFavorited;
        });
      },
    );
  }
}
