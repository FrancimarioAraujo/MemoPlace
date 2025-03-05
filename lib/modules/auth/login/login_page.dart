import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';
import 'package:memoplace/shared/validators/email_validator.dart';
import 'package:memoplace/shared/validators/password_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final  _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.horizontalMedium,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                    Container(
            padding: AppPaddings.verticalMedium,
            child: Text("MemoPlace", style: Theme.of(context).textTheme.headlineLarge,
                ),
                    ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                  validator: EmailValidator.validate,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                  ),
                  validator: PasswordValidator.validate,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                       _formKey.currentState!.validate();
                    },
                    child: Text(
                      'Entrar',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                   Modular.to.pushNamed('/forgot');
                  },
                  child: Text(
                    'Esqueceu a senha?',
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não tem uma conta?'),
                    TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/signup');
                      },
                      child: Text(
                        'Cadastre-se',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
