import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 3),
        Text('$rating', style: TextStyle(color: Colors.grey, fontSize: 16)),
        SizedBox(width: 3),
        Text('$count', style: TextStyle(color: Colors.grey, fontSize: 16)),
      ],
    );
  }
}
