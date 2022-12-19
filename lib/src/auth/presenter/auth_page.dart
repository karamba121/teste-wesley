import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'auth_store.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthStore> {
   @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(19, 23, 26, 1),
            Color(0xFF26063E),
            Colors.white,
          ],
        ),
      ),
    );
  }
}
