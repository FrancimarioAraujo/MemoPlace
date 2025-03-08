import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/modules/splash/splash_module.dart';
import 'modules/auth/auth_module.dart';


class AppModule extends Module {

  @override
  void binds(i) {
  
  }

@override
  void routes(r) {
    r.module('/', module: SplashModule());
    r.module('/auth', module: AuthModule());
  }
 
}

