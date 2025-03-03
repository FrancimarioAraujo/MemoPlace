import 'package:flutter/material.dart';
import 'package:memoplace/shared/theme/constants/app_colors.dart';
import 'package:memoplace/shared/theme/constants/app_paddings.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.horizontalMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Container(
          padding: AppPaddings.verticalMedium,
          child: Text("MemoPlace"
              ),
        ),
              TextField(
                controller: _emailController,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text(
                    'Entrar',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                 
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
    );
  }
}
