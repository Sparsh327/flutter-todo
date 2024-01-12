import 'notifier/settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:sparsh_jaiswal_s_application1/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/widgets/custom_icon_button.dart';
import 'package:sparsh_jaiswal_s_application1/widgets/custom_outlined_button.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 90.v),
                      _buildSettingOption(context),
                      SizedBox(height: 34.v),
                      _buildLanguage(context, language: "lbl_personality".tr),
                      SizedBox(height: 14.v),
                      _buildLanguage(context, language: "lbl_language".tr),
                      SizedBox(height: 14.v),
                      _buildLanguage(context,
                          language: "msg_terms_and_conditions".tr),
                      Spacer(),
                      SizedBox(height: 63.v),
                      CustomOutlinedButton(text: "lbl_log_out".tr)
                    ]))));
  }

  /// Section Widget
  Widget _buildSettingOption(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_settings".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 9.v),
      Text("msg_your_settings_so".tr, style: theme.textTheme.labelLarge)
    ]);
  }

  /// Common widget
  Widget _buildLanguage(
    BuildContext context, {
    required String language,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 19.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(language,
                  style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(0.6)))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 6.v,
              width: 3.h,
              margin: EdgeInsets.only(left: 93.h, top: 7.v, bottom: 7.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
