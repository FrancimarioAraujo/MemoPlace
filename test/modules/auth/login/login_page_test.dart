import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:memoplace/app_module.dart';
import 'package:memoplace/modules/auth/login/login_page.dart';
import 'package:memoplace/shared/constants/app_strings.dart';

void main() {
  
  testWidgets('It should display email, password and login button fields', (WidgetTester tester) async {
    Modular.init(AppModule());
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.widgetWithText(TextFormField, AppStrings.email), findsOneWidget);
    expect(find.widgetWithText(TextFormField, AppStrings.password), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, AppStrings.buttonEnter), findsOneWidget);
    expect(find.text(AppStrings.forgotPassword), findsOneWidget);
    expect(find.text(AppStrings.buttonSignUp), findsOneWidget);
  });

  testWidgets('You must validate your email and password by pressing "Enter"', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.buttonEnter));
    await tester.pump();
    expect(find.text(AppStrings.typeEmail), findsOneWidget);
    expect(find.text(AppStrings.typeEmail), findsOneWidget);
    await tester.enterText(find.widgetWithText(TextFormField, AppStrings.email), 'user@example.com');
    await tester.enterText(find.widgetWithText(TextFormField, AppStrings.password), 'password123');
    await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.buttonEnter));
    await tester.pump();
    expect(find.text(AppStrings.emailInvalid), findsNothing);
    expect(find.text(AppStrings.passwordLength), findsNothing);
  });
}
 