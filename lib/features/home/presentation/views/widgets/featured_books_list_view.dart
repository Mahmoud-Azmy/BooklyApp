import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedbooksListView extends StatelessWidget {
  const FeaturedbooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
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
    );
  }
}
