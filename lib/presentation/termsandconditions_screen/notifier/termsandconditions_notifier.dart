import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/termsandconditions_screen/models/termsandconditions_model.dart';
part 'termsandconditions_state.dart';

final termsandconditionsNotifier =
    StateNotifierProvider<TermsandconditionsNotifier, TermsandconditionsState>(
        (ref) => TermsandconditionsNotifier(TermsandconditionsState(
            termsandconditionsModelObj: TermsandconditionsModel())));

/// A notifier that manages the state of a Termsandconditions according to the event that is dispatched to it.
class TermsandconditionsNotifier
    extends StateNotifier<TermsandconditionsState> {
  TermsandconditionsNotifier(TermsandconditionsState state) : super(state);
}
