import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({
    super.key,
  });
  String? bookName;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        bookName = value;
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              SearchBooksCubit.get(context)
                  .fetchSearchBooksResult(bookName: bookName ?? '');
              FocusScope.of(context).requestFocus(FocusNode());
            },
            icon: const Opacity(
                opacity: .6, child: Icon(FontAwesomeIcons.magnifyingGlass))),
        labelText: 'search',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
