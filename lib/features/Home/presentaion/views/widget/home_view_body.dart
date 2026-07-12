import 'package:bookly/features/Home/presentaion/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [SafeArea(child: CustomAppBar())]),
    );
  }
}
