import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.kLogo, width: 110),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push('/searchview');
          },
          icon: Icon(Icons.search, size: 30, color: Colors.white),
        ),
      ],
    );
  }
}
