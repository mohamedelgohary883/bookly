import 'package:bookly/core/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.route,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff100B20),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
