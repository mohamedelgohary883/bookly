import 'package:bookly/features/home/presentation/views/widgets/newest_item.dart';
import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SafeArea(
                    child: TextField(
                      onChanged: (value) {
                        context.read<SearchBooksCubit>().searchBooks(
                          query: value,
                        );
                      },
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<SearchBooksCubit, SearchBooksState>(
              builder: (context, state) {
                if (state is SearchBooksSuccess) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: state.books.length,
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: NewestItem(bookModel: state.books[index]),
                        );
                      },
                    ),
                  );
                } else if (state is SearchBooksFailure) {
                  return SliverToBoxAdapter(
                    child: Center(child: Text(state.errorMessage)),
                  );
                } else if (state is SearchBooksLoading) {
                  return SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else {
                  return SliverToBoxAdapter(
                    child: Center(child: Text('Search for books')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
