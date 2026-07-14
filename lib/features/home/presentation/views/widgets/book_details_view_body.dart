import 'package:bookly/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SafeArea(child: BookDetailsAppbar()),
            BookDetailsSection(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You may also like',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20),
            SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
