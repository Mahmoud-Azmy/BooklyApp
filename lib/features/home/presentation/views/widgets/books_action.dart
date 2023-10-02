import 'package:bookly_app/core/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const CustomBottom(
            text: 'Free',
            left: 16,
          ),
          Container(
            color: Colors.grey,
            height: 50,
            width: .5,
          ),
          const CustomBottom(
            fontSize: 16,
            color: Colors.white,
            backgroundColor: Color(0xffef8262),
            right: 16,
            text: 'Free Preview',
          )
        ],
      ),
    );
  }
}
