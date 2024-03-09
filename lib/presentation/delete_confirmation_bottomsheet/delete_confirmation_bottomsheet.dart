import 'package:spikeai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DeleteConfirmationBottomsheet extends StatelessWidget {
  const DeleteConfirmationBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 22.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 92.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: Container(
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder55,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 19.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Text(
                  "?",
                  style: CustomTextStyles.headlineSmallMontserratWhiteA700,
                ),
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Container(
            width: 233.h,
            margin: EdgeInsets.only(
              left: 48.h,
              right: 46.h,
            ),
            child: Text(
              "Are you sure want to\ndelete all your chat? ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Text(
            "This action can’t be undo",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 36.v),
          _buildCancel(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Cancel",
            margin: EdgeInsets.only(right: 5.h),
            buttonStyle: CustomButtonStyles.fillRedATL35,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Delete",
            margin: EdgeInsets.only(left: 5.h),
            buttonStyle: CustomButtonStyles.fillGrayTL35,
            buttonTextStyle: CustomTextStyles.titleMedium16,
          ),
        ),
      ],
    );
  }
}
