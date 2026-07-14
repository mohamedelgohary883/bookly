import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
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
          return BookDetailsView();
        },
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) {
          return SearchView();
        },
      ),
    ],
  );
}
