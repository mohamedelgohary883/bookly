import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRebo {
  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<ServerFailure, List<BookModel>>> fetchNewestBooks();
}
