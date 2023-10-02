import 'package:bookly_app/core/utils/animation_route.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_message.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newestt_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
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
                        Navigator.of(context).push(
                          SlideRight(
                            page: BlocProvider(
                              create: (context) => SimilarBooksCubit(
                                getIt.get<HomeRepoImpl>(),
                              )..fetchSimilarBooks(
                                  category: state
                                      .books[index].volumeInfo!.categories![0]),
                              child: BookDetailsView(
                                  imageUrl: state.books[index].volumeInfo!
                                          .imageLinks!.thumbnail ??
                                      '',
                                  bookName:
                                      state.books[index].volumeInfo!.title!,
                                  bootAuther: state
                                      .books[index].volumeInfo!.authors![0]),
                            ),
                          ),
                        );
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
