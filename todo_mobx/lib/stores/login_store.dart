import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  @observable
  bool loggedIn = false;

  @observable
  bool esconderSenha = true;

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void setPassword(String value) => password = value;
  
  @action
  void inverterEsconderSenha() => esconderSenha = !esconderSenha;

  @computed
  bool get isEmailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length > 6;

  @computed
  Function get loginPressed => 
    (isEmailValid && isPasswordValid && !loading) ?
      login : null;

  @observable
  bool loading = false;

  @action
  Future<void> login() async {
    loading = true;
    loading = false;
    loggedIn = true;

    email = "";
    password = "";
  }

  @action
  void logout(){
    loggedIn = false;
  }
}
