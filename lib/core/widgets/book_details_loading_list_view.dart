import 'package:bookly_app/core/widgets/book_details_loading_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookDetailsLoadingListView extends StatelessWidget {
  const BookDetailsLoadingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .1,
      child: Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 212, 201, 201),
        highlightColor: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const BookDetailsListViewLoadingItem();
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: 10)),
      ),
    );
  }
}
