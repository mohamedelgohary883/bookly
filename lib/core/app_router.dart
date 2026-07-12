import 'package:bookly/features/Home/presentaion/views/home_view.dart';
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
    ],
  );
}
