import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AuthService exposes sendPasswordResetEmail for forgot password', () {
    final source = File('lib/auth_service.dart').readAsStringSync();

    // Desired API exists with same error-handling style as login/register.
    expect(source, contains('sendPasswordResetEmail'));
    expect(source, contains('sendPasswordResetEmail(email'));
    expect(source, contains('Password reset error'));
  });
}
