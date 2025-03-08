import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  @action
  void setEmail(String value) => email = value;
  
  @action
  void setPassword(String value) => password = value;

  @action
  Future<void> login() async {
    isLoading = true;
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
  }
}
