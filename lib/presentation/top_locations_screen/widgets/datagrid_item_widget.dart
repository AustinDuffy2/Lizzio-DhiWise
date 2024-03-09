import 'package:spikeai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class DatagridItemWidget extends StatelessWidget {
  DatagridItemWidget({
    Key? key,
    this.onTapEstatesCardLocation,
  }) : super(
          key: key,
        );

  VoidCallback? onTapEstatesCardLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardLocation!.call();
      },
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 174.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgShape174x144,
                    height: 174.v,
                    width: 144.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  _buildOneButton(context),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Bali",
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 7.v),
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
      margin: EdgeInsets.only(
        left: 10.h,
        top: 10.v,
      ),
      buttonStyle: CustomButtonStyles.fillOrange,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
      alignment: Alignment.topLeft,
    );
  }
}
