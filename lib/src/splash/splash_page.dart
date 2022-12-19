import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      FirebaseAnalytics analytics = FirebaseAnalytics.instance;

      analytics.logAppOpen();
    }

    Future.delayed(const Duration(seconds: 5)).then((_) async => {
          // if (await this._authService.getIsFirstAccess())
          //   await Modular.to.pushReplacementNamed('/onboard')
          // else if (!await this._authService.getIsAuthenticated())
          //   await Modular.to.pushReplacementNamed('/login')
          // else
          Modular.to.navigate('/tab/home/')
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFEBECF0),
        child: const Center(child: Text('Tota Eventos')),
      ),
    );
  }
}
