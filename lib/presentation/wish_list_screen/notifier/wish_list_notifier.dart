import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/presentation/wish_list_screen/models/wish_list_model.dart';
part 'wish_list_state.dart';

final wishListNotifier = StateNotifierProvider<WishListNotifier, WishListState>(
    (ref) => WishListNotifier(WishListState(
        filesizeController: TextEditingController(),
        wishListModelObj: WishListModel())));

/// A notifier that manages the state of a WishList according to the event that is dispatched to it.
class WishListNotifier extends StateNotifier<WishListState> {
  WishListNotifier(WishListState state) : super(state);
}
