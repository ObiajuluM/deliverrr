import 'package:deliverrr/services/auth/auth_gate.dart';
import 'package:deliverrr/firebase_options.dart';
import 'package:deliverrr/models/resturant.dart';
import 'package:deliverrr/themes/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  ///
  runApp(
    MultiProvider(
      providers: [
        // theme
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        // resturant
        ChangeNotifierProvider(create: (context) => Resturant()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const AuthGate(),
    );
  }
}
