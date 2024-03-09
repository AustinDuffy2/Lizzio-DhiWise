import 'package:spikeai/widgets/custom_icon_button.dart';
import 'package:spikeai/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class ViewallreviewsItemWidget extends StatelessWidget {
  const ViewallreviewsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.gradientRedAToSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 53.adaptSize,
            width: 53.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillRedATL15,
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 99.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 7.v,
                        ),
                        child: CustomRatingBar(
                          ignoreGestures: true,
                          initialRating: 0,
                          itemSize: 12,
                        ),
                      ),
                      Text(
                        "4.9",
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "From",
                      style: CustomTextStyles.bodySmall9,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "112",
                        style: CustomTextStyles.bodySmallMontserrat,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "reviewers",
                        style: CustomTextStyles.bodySmall9,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 30.v,
            width: 70.h,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
