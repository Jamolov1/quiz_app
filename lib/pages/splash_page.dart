import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quiz_app/pages/intro_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  Future<void> _checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      await prefs.setBool('isFirstTime', false);
      _navigateToPage(const IntroPage());
    } else {
      _navigateToPage(const LoginPage());
    }
  }

  void _navigateToPage(Widget page) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => page),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade600,
              Colors.deepPurple.shade400,
              Colors.deepPurple.shade300,
            ],
          ),
        ),
        child: Center(
          child: Lottie.asset("assets/lottie/splash_quiz.json")
        )
      ),
    );
  }
}
