import 'package:bookly_app/core/utils/animation_route.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void navigateToBookDetails(BuildContext context, state, int index) {
  Navigator.of(context).push(
    SlideRight(
      page: BlocProvider(
        create: (context) => SimilarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        )..fetchSimilarBooks(
            category: state.books[index].volumeInfo!.categories![0]),
        child: BookDetailsView(
          bookModel: state.books[index],
        ),
      ),
    ),
  );
}
