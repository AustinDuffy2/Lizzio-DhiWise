import 'package:spikeai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class LocationlistItemWidget extends StatelessWidget {
  const LocationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedinDeepOrangeA20050x50,
            ),
          ),
          Container(
            width: 203.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "2.5 km",
                    style: CustomTextStyles.bodySmallff242b5c,
                  ),
                  TextSpan(
                    text:
                        " from Srengseng, Kembangan, West Jakarta City, Jakarta 11630",
                    style: CustomTextStyles.bodySmallff53577a,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
