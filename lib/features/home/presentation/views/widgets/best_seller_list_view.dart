import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_item.dart';
import 'package:flutter/material.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CustomBookDetailsItem();
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
