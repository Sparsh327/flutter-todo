import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/login_or_signup_screen/models/login_or_signup_model.dart';
part 'login_or_signup_state.dart';

final loginOrSignupNotifier =
    StateNotifierProvider<LoginOrSignupNotifier, LoginOrSignupState>((ref) =>
        LoginOrSignupNotifier(
            LoginOrSignupState(loginOrSignupModelObj: LoginOrSignupModel())));

/// A notifier that manages the state of a LoginOrSignup according to the event that is dispatched to it.
class LoginOrSignupNotifier extends StateNotifier<LoginOrSignupState> {
  LoginOrSignupNotifier(LoginOrSignupState state) : super(state);
}
