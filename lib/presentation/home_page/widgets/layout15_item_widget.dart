import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class Layout15ItemWidget extends StatelessWidget {
  const Layout15ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShape70x70,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              "Amanda",
              style: CustomTextStyles.labelLargeMedium,
            ),
          ],
        ),
      ),
    );
  }
}
