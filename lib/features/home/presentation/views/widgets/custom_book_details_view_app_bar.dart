import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsViewAppBar extends StatelessWidget {
  const CustomBookDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 30, top: 16),
      child: Row(
        children: [
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.xmark)),
          const Spacer(),
          const Icon(Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}
