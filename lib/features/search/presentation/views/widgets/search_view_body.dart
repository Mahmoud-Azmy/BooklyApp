import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Search',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(),
        ),
        const SizedBox(
          height: 40,
        ),
        const SearchResultListView()
      ],
    );
  }
}
