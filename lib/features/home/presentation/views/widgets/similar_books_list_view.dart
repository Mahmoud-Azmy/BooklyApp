import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_message.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarbooksListView extends StatelessWidget {
  const SimilarbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (state.books[index].volumeInfo!.imageLinks?.thumbnail !=
                        null) {
                      return CustomBookImage(
                          imageUrl: state.books[index].volumeInfo!.imageLinks
                                  ?.thumbnail ??
                              '');
                    }
                    return null;
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 16,
                      ),
                  itemCount: state.books.length),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrMessage(errMessage: state.errorMessage);
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
