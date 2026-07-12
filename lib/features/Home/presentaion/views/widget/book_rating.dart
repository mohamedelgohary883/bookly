import 'package:flutter/material.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Free',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 3),

        Text('4.8', style: TextStyle(color: Colors.grey, fontSize: 16)),
        SizedBox(width: 3),
        Text('(2350)', style: TextStyle(color: Colors.grey, fontSize: 16)),
      ],
    );
  }
}
