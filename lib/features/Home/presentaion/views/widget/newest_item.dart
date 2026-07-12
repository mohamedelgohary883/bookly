import 'package:bookly/core/assets.dart';
import 'package:bookly/features/Home/presentaion/views/widget/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/bookdetailsview');
        },
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.book1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'The jungle book',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.allertaStencil(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Mohamed Elgohary',
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
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Bookrating(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
