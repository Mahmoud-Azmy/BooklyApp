import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrMessage extends StatelessWidget {
  const ErrMessage({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
