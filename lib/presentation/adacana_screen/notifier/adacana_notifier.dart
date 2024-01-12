import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/adacana_screen/models/adacana_model.dart';
part 'adacana_state.dart';

final adacanaNotifier = StateNotifierProvider<AdacanaNotifier, AdacanaState>(
    (ref) => AdacanaNotifier(AdacanaState(adacanaModelObj: AdacanaModel())));

/// A notifier that manages the state of a Adacana according to the event that is dispatched to it.
class AdacanaNotifier extends StateNotifier<AdacanaState> {
  AdacanaNotifier(AdacanaState state) : super(state);
}
