import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:todoapp_flutter/src/session_manages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn"),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: SignInWithEmailButton(
          caller: client.modules.auth,
        ),
      ),
    );
  }
}
