import 'package:flutter/material.dart';
import 'package:momo/services/memo_service.dart';

class MemoProvider extends ChangeNotifier {
  final memoService = MemoService();
}
