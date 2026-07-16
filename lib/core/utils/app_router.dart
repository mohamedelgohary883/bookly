import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) {
          return HomeView();
        },
      ),
      GoRoute(
        path: '/bookdetailsview',
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
            child: BookDetailsView(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SearchBooksCubit(homeRepo: getIt.get<HomeRepo>()),

            child: SearchView(),
          );
        },
      ),
    ],
  );
}
