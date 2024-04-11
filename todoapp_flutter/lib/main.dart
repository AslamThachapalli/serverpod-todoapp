import 'package:flutter/material.dart';
import 'package:todoapp_flutter/pages/home_page.dart';
import 'package:todoapp_flutter/pages/signin_page.dart';
import 'package:todoapp_flutter/src/session_manages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeSessionManager();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    sessionManager.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
          focusedErrorBorder: OutlineInputBorder(),
        ),
      ),
      home: sessionManager.isSignedIn ? const HomePage() : const SignInPage(),
    );
  }
}
