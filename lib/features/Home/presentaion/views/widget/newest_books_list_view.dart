import 'package:bookly/features/Home/presentaion/views/widget/newest_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 8, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NewestItem(),
        );
      }),
    );
  }
}
