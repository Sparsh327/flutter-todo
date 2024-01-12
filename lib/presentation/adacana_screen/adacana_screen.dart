import 'notifier/adacana_notifier.dart';
import 'package:flutter/material.dart';
import 'package:sparsh_jaiswal_s_application1/core/app_export.dart';

class AdacanaScreen extends ConsumerStatefulWidget {
  const AdacanaScreen({Key? key}) : super(key: key);

  @override
  AdacanaScreenState createState() => AdacanaScreenState();
}

class AdacanaScreenState extends ConsumerState<AdacanaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 325.v,
                          width: 238.h,
                          onTap: () {
                            onTapImgLogo(context);
                          })
                    ]))));
  }

  /// Navigates to the loginOrSignupScreen when the action is triggered.
  onTapImgLogo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginOrSignupScreen,
    );
  }
}
