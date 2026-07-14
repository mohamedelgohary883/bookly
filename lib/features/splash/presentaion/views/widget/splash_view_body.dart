import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(Assets.kLogo),
            Text('Read free books', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push('/homeview');
    });
  }
}
