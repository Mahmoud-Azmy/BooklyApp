import 'package:flutter/material.dart';

class BookDetailsListViewLoadingItem extends StatelessWidget {
  const BookDetailsListViewLoadingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(12)),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: MediaQuery.of(context).size.width * .5,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              width: MediaQuery.of(context).size.width * .45,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              width: MediaQuery.of(context).size.width * .37,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
