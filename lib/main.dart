import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quill/src/controllers/onboarding_controller.dart';
import 'package:quill/src/modules/empty/empty_screen.dart';
import 'package:quill/src/modules/onboarding/onboarding_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingController(),
        ),
      ],
      child: Quill(),
    ),
  );
}

class Quill extends StatelessWidget {
  const Quill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quill',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: //OnboardingScreen(),
        EmptyScreen()
      ),
    );
  }
}
