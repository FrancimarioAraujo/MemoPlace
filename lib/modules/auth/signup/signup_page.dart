import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';
import 'package:memoplace/shared/validators/complete_name_validator.dart';
import 'package:memoplace/shared/validators/email_validator.dart';
import 'package:memoplace/shared/validators/password_validator.dart';
import 'package:memoplace/shared/validators/username_validator.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _completeName = TextEditingController();
  final TextEditingController _userName = TextEditingController();
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
                TextFormField(
                  controller: _completeName,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                  ),
                  validator: CompleteNameValidator.validate,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _userName,
                  decoration: InputDecoration(
                    labelText: 'Nome de Usuário',
                  ),
                  validator: UsernameValidator.validate,
                ),
               
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                       _formKey.currentState!.validate();
                    },
                    child: Text(
                      'Cadastrar-se',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                   Modular.to.pushNamed('/auth');
                  },
                  child: Text(
                    'Já tenho uma conta',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
