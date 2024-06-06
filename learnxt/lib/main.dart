import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learnxt/Screen/Auth/Splash.dart';
import 'package:learnxt/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Leanxt());
}

class Leanxt extends StatelessWidget {
  const Leanxt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 244, 245, 243)),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
