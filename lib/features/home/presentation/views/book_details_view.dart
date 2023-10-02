import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView(
      {super.key,
      required this.imageUrl,
      required this.bookName,
      required this.bootAuther});
  final String imageUrl;
  final String bookName;
  final String bootAuther;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
        imageUrl: imageUrl,
        bookName: bookName,
        bootAuther: bootAuther,
      )),
    );
  }
}
