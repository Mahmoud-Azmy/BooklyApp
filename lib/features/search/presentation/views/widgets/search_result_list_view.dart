import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Text('data');
          // return const CustomBookDetailsItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 20,
      ),
    );
  }
}
