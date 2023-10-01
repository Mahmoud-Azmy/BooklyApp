import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
    required this.bookRating,
    required this.countRating,
  });
  final num bookRating;
  final int countRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 18,
        ),
        const SizedBox(
          width: 6.5,
        ),
        Text(
          '$bookRating',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($countRating)',
          style:
              Styles.textStyle14.copyWith(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
