import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/language_screen/models/language_model.dart';
part 'language_state.dart';

final languageNotifier = StateNotifierProvider<LanguageNotifier, LanguageState>(
    (ref) =>
        LanguageNotifier(LanguageState(languageModelObj: LanguageModel())));

/// A notifier that manages the state of a Language according to the event that is dispatched to it.
class LanguageNotifier extends StateNotifier<LanguageState> {
  LanguageNotifier(LanguageState state) : super(state);
}
