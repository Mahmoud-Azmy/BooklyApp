import 'package:bookly_app/core/utils/navigate_to_book_details.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_message.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newestt_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (state.books[index].volumeInfo?.imageLinks?.thumbnail !=
                      null) {
                    return CustomBookDetailsItem(
                      bookModel: state.books[index],
                      onTap: () {
                        navigateToBookDetails(context, state, index);
                      },
                    );
                  }
                  return null;
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: state.books.length,
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: ErrMessage(errMessage: state.errorMessage));
        }
        return const SliverToBoxAdapter(child: CustomLoadingIndicator());
      },
    );
  }
}
