import 'package:spikeai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class ShapeItemWidget extends StatelessWidget {
  const ShapeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 161.v,
        width: 159.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShape52,
              height: 161.v,
              width: 159.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillRedATL15,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconCloseWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
