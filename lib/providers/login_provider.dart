import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool _isLoginCliked = true;
  bool _isSignUpCliked = false;
  bool _isNext = false;

  bool get isLoginCliked => _isLoginCliked;
  bool get isSignUpCliked => _isSignUpCliked;
  bool get isNext => _isNext;

  changeNextValue() {
    _isNext = true;
    _isLoginCliked = false;
    notifyListeners();
  }

  changeLoginBoolValue() {
    _isLoginCliked = true;
    //_isLoginCliked = !_isLoginCliked;
    _isSignUpCliked = false;
    _isNext = false;
    notifyListeners();
  }

  changeSignupBoolValue() {
    _isSignUpCliked = true;
    //_isSignUpCliked = !_isSignUpCliked;
    _isLoginCliked = false;
    notifyListeners();
  }
}
