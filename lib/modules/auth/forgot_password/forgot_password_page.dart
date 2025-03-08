import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';
import 'package:memoplace/shared/validators/email_validator.dart';
import 'package:memoplace/shared/constants/app_strings.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    child: Text(
                      AppStrings.buttonSendCode,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Modular.to.pushNamed('/auth/');
                  },
                  child: Text(
                    AppStrings.buttonCancel,
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
