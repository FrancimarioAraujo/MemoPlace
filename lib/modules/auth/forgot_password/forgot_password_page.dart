import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';
import 'package:memoplace/shared/validators/email_validator.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                       _formKey.currentState!.validate();
                    },
                    child: Text(
                      'Enviar código',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Modular.to.pushNamed('/');
                  },
                  child: Text(
                    'Cancelar',
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
