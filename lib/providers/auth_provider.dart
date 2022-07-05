import 'package:flutter/material.dart';
import 'package:momo/services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final authService = AuthService();
}
