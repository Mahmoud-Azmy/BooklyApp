import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 40,
          ),
          const SearchResultListView()
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 20,
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
                opacity: .6, child: Icon(FontAwesomeIcons.magnifyingGlass))),
        labelText: 'search',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
