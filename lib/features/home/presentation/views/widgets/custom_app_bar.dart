import 'package:bookly_app/core/utils/animation_route.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 24, left: 30, right: 30),
      child: Row(
        children: [
          Image.asset(
            AssetsData.klogo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(SlideRight(
                    page: BlocProvider(
                        create: (context) =>
                            SearchBooksCubit(getIt.get<SearchRepoImpl>()),
                        child: const SearchView())));
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
