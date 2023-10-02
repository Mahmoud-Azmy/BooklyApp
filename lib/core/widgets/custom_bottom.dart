import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      this.backgroundColor = Colors.white,
      this.right = 0,
      this.left = 0,
      this.color = Colors.black,
      required this.text,
      this.fontSize = 20,
      this.onPressed});
  final Color backgroundColor;
  final String text;
  final Color color;
  final double fontSize;
  final double right;
  final double left;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(left),
                      topRight: Radius.circular(right),
                      bottomLeft: Radius.circular(left),
                      bottomRight: Radius.circular(right)))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(
                color: color, fontWeight: FontWeight.bold, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
