import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/bookdetailsview', extra: bookModel);
        },
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo?.title ?? 'unknown title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.allertaStencil(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    bookModel.volumeInfo?.authors?[0] ?? 'unknown authors',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.16),
                      BookRating(rating: 52, count: 52),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
