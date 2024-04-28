import 'package:code_forces/models/user_info_model.dart';
import 'package:code_forces/services/user_info_service.dart';
import 'package:flutter/material.dart';

class userProvider extends ChangeNotifier
{
  userInfo? _user;
  set user(userInfo? userpro)
  {
    _user=userpro;
    notifyListeners();
  }
  userInfo? get user => _user;
}