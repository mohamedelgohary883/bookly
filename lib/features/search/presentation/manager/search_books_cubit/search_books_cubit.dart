import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit({required this.homeRepo}) : super(SearchBooksInitial());
  final HomeRepo homeRepo;
  Future<void> searchBooks({required String query}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.searchBooks(query: query);
    if (isClosed) return;
    result.fold(
      (failure) {
        emit(SearchBooksFailure(errorMessage: failure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books: books));
      },
    );
  }
}
