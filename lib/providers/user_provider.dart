import 'package:flutter/material.dart';
import 'package:momo/services/user_service.dart';

class UserProvider extends ChangeNotifier {
  final userService = UserService();
}
