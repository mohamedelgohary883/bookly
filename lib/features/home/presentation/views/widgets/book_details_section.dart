import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          children: [BookRating()],
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
      ],
    );
  }
}
