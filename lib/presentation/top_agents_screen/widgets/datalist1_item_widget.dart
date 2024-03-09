import 'package:spikeai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class Datalist1ItemWidget extends StatelessWidget {
  Datalist1ItemWidget({
    Key? key,
    this.onTapEstatesCardUser,
  }) : super(
          key: key,
        );

  VoidCallback? onTapEstatesCardUser;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardUser!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 124.v,
                width: 114.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildOneButton(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgShape100x100,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(
                        50.h,
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              "Amanda",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 37.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalOrange300,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Text(
                        "5.0",
                        style: CustomTextStyles.labelLargeBluegray600_1,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 65.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "112",
                          style: CustomTextStyles.labelLargeBluegray600_1,
                        ),
                      ),
                      Text(
                        "Sold",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneButton(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 22.h,
      text: "1",
      buttonStyle: CustomButtonStyles.fillOrange,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
      alignment: Alignment.topLeft,
    );
  }
}
