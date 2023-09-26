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
          height: 32,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.28),
          child: const CustomBookImage(),
        )
      ],
    );
  }
}
