import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class socialmedia_button extends StatelessWidget {
  socialmedia_button({required this.image, required this.onPressed});

  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: HexColor('#fbf5f2'),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 60.0,
          height: 60.0,
          child: Image.asset(
            image,
            height: 35.0,
          ),
        ),
      ),
    );
  }
}
