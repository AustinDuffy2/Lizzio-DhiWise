import 'package:spikeai/widgets/custom_elevated_button.dart';
import 'package:spikeai/widgets/custom_search_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import '../filter_full_bottomsheet/widgets/categorychipview_item_widget.dart';
import 'package:spikeai/widgets/custom_text_form_field.dart';
import '../filter_full_bottomsheet/widgets/environmentfacilitieschipview2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FilterFullBottomsheet extends StatelessWidget {
  FilterFullBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController priceController = TextEditingController();

  TextEditingController formValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 24.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 60.h,
                child: Divider(),
              ),
            ),
            SizedBox(height: 33.v),
            _buildTitleRow(context),
            SizedBox(height: 160.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "Location",
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            CustomSearchView(
              controller: searchController,
              hintText: "Semarang",
              contentPadding: EdgeInsets.symmetric(vertical: 26.v),
            ),
            SizedBox(height: 15.v),
            _buildLayoutStack(context),
            SizedBox(height: 39.v),
            Text(
              "Sell type",
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 14.v),
            _buildCategoryChipView(context),
            SizedBox(height: 31.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "Price",
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            _buildFormValueComparisonRow(context),
            SizedBox(height: 166.v),
            Text(
              "Environment / Facilities",
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 16.v),
            _buildEnvironmentFacilitiesChipView(context),
            SizedBox(height: 38.v),
            _buildApplyFilterButton(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReset(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 88.h,
      text: "Reset",
      buttonStyle: CustomButtonStyles.fillRedATL25,
      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 11.v,
          ),
          child: Text(
            "Filter",
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        _buildReset(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLayoutStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 200.v,
        width: 327.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 200.v,
              width: 327.h,
              child: GoogleMap(
                //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    37.43296265331129,
                    -122.08832357078792,
                  ),
                  zoom: 14.4746,
                ),
                onMapCreated: (GoogleMapController controller) {
                  googleMapController.complete(controller);
                },
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                myLocationButtonEnabled: false,
                myLocationEnabled: false,
              ),
            ),
            CustomElevatedButton(
              height: 50.v,
              width: 327.h,
              text: "Select on map",
              buttonStyle: CustomButtonStyles.fillWhiteA2,
              buttonTextStyle: theme.textTheme.titleSmall!,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange300,
              height: 51.v,
              width: 34.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 44.v,
                right: 132.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryChipView(BuildContext context) {
    return Wrap(
      runSpacing: 6.v,
      spacing: 6.h,
      children:
          List<Widget>.generate(2, (index) => CategorychipviewItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
      width: 138.h,
      controller: priceController,
      hintText: "150",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconDollarFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 70.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 26.v,
        right: 30.h,
        bottom: 26.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
    );
  }

  /// Section Widget
  Widget _buildFormValue(BuildContext context) {
    return CustomTextFormField(
      width: 138.h,
      controller: formValueController,
      hintText: "350",
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconDollarFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 70.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 26.v,
        right: 30.h,
        bottom: 26.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
    );
  }

  /// Section Widget
  Widget _buildFormValueComparisonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPrice(context),
        CustomImageView(
          imagePath: ImageConstant.imgShare,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 25.v),
        ),
        _buildFormValue(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEnvironmentFacilitiesChipView(BuildContext context) {
    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children: List<Widget>.generate(
          7, (index) => Environmentfacilitieschipview2ItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildApplyFilterButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Apply Filter ",
    );
  }
}
