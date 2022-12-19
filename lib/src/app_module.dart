import 'package:flutter_modular/flutter_modular.dart';
import 'package:tota/src/home/presenter/home_module.dart';

import 'auth/presenter/auth_module.dart';
import 'performer/presenter/performer_module.dart';
import 'splash/splash_page.dart';
import 'tab/tab_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ChildRoute(
          '/tab',
          child: (context, args) => const TabPage(),
          children: [
            ModuleRoute('/home', module: HomeModule()),
            ModuleRoute('/performer', module: PerformerModule()),
            ModuleRoute('/auth', module: AuthModule()),
          ],
        ),
      ];
}
