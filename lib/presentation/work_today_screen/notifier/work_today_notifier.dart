import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/work_today_screen/models/work_today_model.dart';
part 'work_today_state.dart';

final workTodayNotifier =
    StateNotifierProvider<WorkTodayNotifier, WorkTodayState>((ref) =>
        WorkTodayNotifier(WorkTodayState(workTodayModelObj: WorkTodayModel())));

/// A notifier that manages the state of a WorkToday according to the event that is dispatched to it.
class WorkTodayNotifier extends StateNotifier<WorkTodayState> {
  WorkTodayNotifier(WorkTodayState state) : super(state);
}
