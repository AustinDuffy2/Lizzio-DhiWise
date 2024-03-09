import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  const NotificationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShape50x50,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 38.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emmett Perry",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 237.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Just messaged you. Check the message in ",
                          style: CustomTextStyles.labelLargeff53577a,
                        ),
                        TextSpan(
                          text: "message",
                          style: CustomTextStyles.labelLargeff242b5c,
                        ),
                        TextSpan(
                          text: " tab.",
                          style: CustomTextStyles.labelLargeff53577a,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 13.v),
                Text(
                  "10 mins ago",
                  style: CustomTextStyles.labelMediumOnPrimaryContainer_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
