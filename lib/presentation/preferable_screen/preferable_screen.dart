import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_trailing_button.dart';import 'widgets/preferablegrid_item_widget.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';class PreferableScreen extends StatelessWidget {const PreferableScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 50.v), Container(width: 254.h, margin: EdgeInsets.only(left: 24.h), child: Text("Select your preferable\nreal estate type 🏡", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("You can edit this later on your account setting.", style: theme.textTheme.bodyMedium)), SizedBox(height: 54.v), SizedBox(height: 656.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [_buildPreferableGrid(context), _buildNextColumn(context)]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildPreferableGrid(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 213.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return PreferablegridItemWidget();}))); } 
/// Section Widget
Widget _buildNextColumn(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 139.v), padding: EdgeInsets.all(24.h), decoration: AppDecoration.linear, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 11.v), CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the preferableSelectedScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.preferableSelectedScreen); } 
 }
