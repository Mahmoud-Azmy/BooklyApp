import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsViewAppBar(),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.29),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Harry Potter and the Goblet of Fire',
            textAlign: TextAlign.center,
            style: Styles.textStyle30,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          'J.K. Rowling',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const BooksRating(),
        const SizedBox(
          height: 16,
        ),
        const BooksAction()
      ],
    );
  }
}
