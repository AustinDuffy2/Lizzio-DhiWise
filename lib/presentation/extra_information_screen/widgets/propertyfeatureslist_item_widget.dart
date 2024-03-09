import 'package:spikeai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class PropertyfeatureslistItemWidget extends StatelessWidget {
  const PropertyfeatureslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: Text(
                "Bedroom",
                style: CustomTextStyles.labelLargeSemiBold,
              ),
            ),
            Spacer(),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseOnprimarycontainer,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 8.v,
                bottom: 2.v,
              ),
              child: Text(
                "3",
                style: CustomTextStyles.titleMedium16,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimarycontainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
