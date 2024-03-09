import 'package:spikeai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodlistItemWidget extends StatelessWidget {
  const PaymentmethodlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillGreenA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 25.adaptSize,
                width: 25.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillWhiteATL122,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                ),
              ),
              SizedBox(height: 41.v),
              Text(
                "•••••••• 1222",
                style: CustomTextStyles.titleMediumWhiteA700_1,
              ),
              SizedBox(height: 25.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: CustomTextStyles.labelSmallWhiteA700SemiBold_1,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          " 54,200",
                          style: CustomTextStyles.labelLargeWhiteA700,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 59.h,
                      top: 13.v,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
