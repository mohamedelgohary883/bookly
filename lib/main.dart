import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';

import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cunit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setUpServiceLocator();
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(homeRepo: getIt.get<HomeRepo>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(homeRepo: getIt.get<HomeRepo>()),
        ),
        BlocProvider(
          create: (context) =>
              SimilarBooksCubit(homeRepo: getIt.get<HomeRepo>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.route,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),
        ),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
