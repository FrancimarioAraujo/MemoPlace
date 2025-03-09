import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';
import 'package:memoplace/shared/validators/email_validator.dart';
import 'package:memoplace/shared/validators/password_validator.dart';
import 'package:memoplace/shared/constants/app_strings.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

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
                  child: Text(
                    AppStrings.titleApp,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: AppStrings.email,
                  ),
                  validator: EmailValidator.validate,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: AppStrings.password,
                  ),
                  validator: PasswordValidator.validate,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    // bool isValid =  _formKey.currentState!.validate();
                      Modular.to.pushReplacementNamed('/home/'); 
                    
                    },
                    child: Text(
                      AppStrings.buttonEnter,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Modular.to.pushNamed('/auth/forgot');
                  },
                  child: Text(
                    AppStrings.forgotPassword,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.dontHaveAccount),
                    TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/auth/signup');
                      },
                      child: Text(
                        AppStrings.buttonSignUp,
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
