import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-psd/halloween-celebration-poster-template_23-2150733079.jpg?w=740&t=st=1695639929~exp=1695640529~hmac=eb01b527d3c693a1cd3f7ae6522d6d3c4e17d256a95be12c0ab69cc215db5886'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
