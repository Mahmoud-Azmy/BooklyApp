import 'package:bookly_app/core/widgets/custom_bottom.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
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
          CustomBottom(
            onPressed: () async {
              Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
            fontSize: 16,
            color: Colors.white,
            backgroundColor: const Color(0xffef8262),
            right: 16,
            text: 'Free Preview',
          )
        ],
      ),
    );
  }
}
