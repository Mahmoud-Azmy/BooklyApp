import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
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
                    'https://m.media-amazon.com/images/I/810jKiNChxL._AC_UF1000,1000_QL80_.jpg'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
