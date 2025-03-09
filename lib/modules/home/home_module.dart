import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/modules/home/home_page.dart';
import 'package:memoplace/shared/guards/auth_guard.dart';

class HomeModule extends Module {

  @override
  void binds(i) {
  
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage(), guards: [AuthGuard()]);
  }
}