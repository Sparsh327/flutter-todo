import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/personality_screen/models/personality_model.dart';
part 'personality_state.dart';

final personalityNotifier =
    StateNotifierProvider<PersonalityNotifier, PersonalityState>((ref) =>
        PersonalityNotifier(PersonalityState(
            userNameController: TextEditingController(),
            firstNameController: TextEditingController(),
            lastNameController: TextEditingController(),
            hobbyController: TextEditingController(),
            dateOfBirthController: TextEditingController(),
            countryController: TextEditingController(),
            personalityModelObj: PersonalityModel())));

/// A notifier that manages the state of a Personality according to the event that is dispatched to it.
class PersonalityNotifier extends StateNotifier<PersonalityState> {
  PersonalityNotifier(PersonalityState state) : super(state);
}
