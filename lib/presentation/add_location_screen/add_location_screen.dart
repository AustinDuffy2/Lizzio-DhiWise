import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/custom_icon_button.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'dart:async';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddLocationScreen extends StatelessWidget {AddLocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 38.v), Text("Where is the location?", style: theme.textTheme.headlineSmall), SizedBox(height: 43.v), _buildLocationRow(context), SizedBox(height: 20.v), _buildLocationLayout(context), SizedBox(height: 82.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, alignment: Alignment.center)])), bottomNavigationBar: _buildNextButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Listing")); } 
/// Section Widget
Widget _buildLocationRow(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 17.h), child: Row(children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedinBlueGray600)), Expanded(child: Container(width: 244.h, margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 5.v), child: Text("Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))))])); } 
/// Section Widget
Widget _buildLocationLayout(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 356.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 356.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 112.h, vertical: 16.v), decoration: AppDecoration.fillWhiteA, child: Text("Select on the map", style: CustomTextStyles.bodySmallBluegray80001_1))), CustomImageView(imagePath: ImageConstant.imgLinkedinPrimary, height: 51.v, width: 34.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 79.v))]))); } 
/// Section Widget
Widget _buildNextButton(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapNextButton(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addPhotosScreen when the action is triggered.
onTapNextButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addPhotosScreen); } 
 }
