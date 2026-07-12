import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppbar extends StatelessWidget {
  const BookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: FaIcon(FontAwesomeIcons.xmark, color: Colors.white, size: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.cartShopping),
        ),
      ],
    );
  }
}
