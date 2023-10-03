import 'package:bookly_app/core/utils/navigate_to_book_details.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_message.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedbooksListView extends StatelessWidget {
  const FeaturedbooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (state.books[index].volumeInfo?.imageLinks?.thumbnail !=
                      null) {
                    return GestureDetector(
                      onTap: () {
                        navigateToBookDetails(context, state, index);
                      },
                      child: CustomBookImage(
                          imageUrl: state
                              .books[index].volumeInfo!.imageLinks!.thumbnail!),
                    );
                  }
                  return null;
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                itemCount: state.books.length),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrMessage(errMessage: state.errorMessage);
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: const CustomLoadingIndicator());
        }
      },
    );
  }
}
