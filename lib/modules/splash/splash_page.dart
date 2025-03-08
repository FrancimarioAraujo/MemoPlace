import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String appName = "MemoPlace";
  List<String> displayedLetters = [];

  @override
  void initState() {
    super.initState();
    _animateText();
  }

  void _animateText() async {
    for (int i = 0; i < appName.length; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      setState(() {
        displayedLetters.add(appName[i]);
      });
    }
    await Future.delayed(const Duration(seconds: 1));
    Modular.to.pushReplacementNamed('/auth/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          displayedLetters.join(),
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
