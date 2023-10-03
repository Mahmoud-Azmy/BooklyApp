import 'package:bookly_app/core/utils/navigate_to_book_details.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_details_loading_list_view.dart';
import 'package:bookly_app/core/widgets/err_message.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_item.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBooksCubit, SearchBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return CustomBookDetailsItem(
                  bookModel: state.books[index],
                  onTap: () {
                    navigateToBookDetails(context, state, index);
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SearchBooksFailure) {
          return ErrMessage(errMessage: state.errorMessage);
        } else if (state is SearchBooksLoading) {
          return const Expanded(child: BookDetailsLoadingListView());
        } else {
          return const Center(
              child: Text(
            'Search about your fave books now',
            style: Styles.textStyle18,
          ));
        }
      },
    );
  }
}
