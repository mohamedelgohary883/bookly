import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SafeArea(child: CustomAppBar()),
                  SizedBox(height: 30),
                  FeaturedBooksListView(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Newest Books',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
            NewestBooksListView(),
          ],
        ),
      ),
    );
  }
}
