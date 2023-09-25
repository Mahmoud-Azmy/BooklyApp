import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedbooksListView(),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 130,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1.3 / 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/free-psd/halloween-celebration-poster-template_23-2150733079.jpg?w=740&t=st=1695639929~exp=1695640529~hmac=eb01b527d3c693a1cd3f7ae6522d6d3c4e17d256a95be12c0ab69cc215db5886'),
                            fit: BoxFit.fill)),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  children: [
                    Text(
                      'Harry Potter',
                      //'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
