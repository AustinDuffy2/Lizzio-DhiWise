import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore: must_be_immutable
class EnvironmentfacilitieschipviewItemWidget extends StatelessWidget {
  const EnvironmentfacilitieschipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 19.v,
        right: 24.h,
        bottom: 19.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Parking Lot",
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.gray100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          25.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
