import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/modules/auth/signup/signup_page.dart';
import 'login/login_page.dart';
import 'login/login_store.dart';

class AuthModule extends Module {

  @override
  void binds(i) {
    // i.addSingleton((i) => LoginStore());
  }

@override
  void routes(r) {
    r.child('/', child: (context) => LoginPage());
    r.child('/signup', child: (context) => SignUpPage());
  }
 
}