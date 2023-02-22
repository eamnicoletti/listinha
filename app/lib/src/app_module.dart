import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/Home/home_module.dart';
import 'package:listinha/src/configuration/configuration_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
