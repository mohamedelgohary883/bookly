import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 3),
        Text('4.8', style: TextStyle(color: Colors.grey, fontSize: 16)),
        SizedBox(width: 3),
        Text('(2350)', style: TextStyle(color: Colors.grey, fontSize: 16)),
      ],
    );
  }
}
