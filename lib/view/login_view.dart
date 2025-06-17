import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 10,
        children: [
          Text('Login'),
          TextField(),
          TextField()
        ],
      ),
    );
  }
}
