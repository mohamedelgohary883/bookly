import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  runApp(Bookly());
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
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
