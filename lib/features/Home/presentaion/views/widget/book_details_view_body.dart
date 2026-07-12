import 'package:bookly/core/assets.dart';
import 'package:bookly/features/Home/presentaion/views/widget/book_details_appbar.dart';
import 'package:bookly/features/Home/presentaion/views/widget/book_rating.dart';
import 'package:bookly/features/Home/presentaion/views/widget/custom_book_image.dart';
import 'package:bookly/features/Home/presentaion/views/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: CustomBookImage(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              'The jungle book',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.allertaStencil(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),

            Text(
              'Mohamed Elgohary',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Bookrating()],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEF8262),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Free preview',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
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
