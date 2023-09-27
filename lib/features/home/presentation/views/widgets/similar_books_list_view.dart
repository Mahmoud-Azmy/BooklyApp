import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarbooksListView extends StatelessWidget {
  const SimilarbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomBookImage();
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 16,
                ),
            itemCount: 20),
      ),
    );
  }
}
