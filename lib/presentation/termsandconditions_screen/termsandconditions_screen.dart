import 'notifier/termsandconditions_notifier.dart';
import 'package:flutter/material.dart';
import 'package:sparsh_jaiswal_s_application1/core/app_export.dart';
import 'package:sparsh_jaiswal_s_application1/widgets/custom_icon_button.dart';

class TermsandconditionsScreen extends ConsumerStatefulWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  @override
  TermsandconditionsScreenState createState() =>
      TermsandconditionsScreenState();
}

class TermsandconditionsScreenState
    extends ConsumerState<TermsandconditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(height: 79.v),
                      SizedBox(
                          width: 155.h,
                          child: Text("msg_terms_and_conditions".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.36))),
                      SizedBox(height: 63.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary_1
                                  .copyWith(height: 2.00))),
                      SizedBox(height: 2.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
