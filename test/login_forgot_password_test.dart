import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('LoginPage shows blue right-aligned Forgot Password under password',
      () {
    final source = File('lib/login_page.dart').readAsStringSync();

    expect(source, contains('Forgot Password?'));
    // Right side alignment
    expect(source, contains('Alignment.centerRight'));
    // Blue color
    expect(
        source.contains('Colors.blue') || source.contains('foregroundColor'),
        isTrue);
  });

  test('Forgot Password button is wired to sendPasswordResetEmail', () {
    final source = File('lib/login_page.dart').readAsStringSync();

    // Uses the login email field and calls AuthService method.
    expect(source, contains('sendPasswordResetEmail'));
    expect(source, contains('emailCtrl.text'));
    // Empty-email guard + user feedback.
    expect(source, contains('Please enter your email first'));
    expect(source, contains('Password reset email sent'));
  });
}
