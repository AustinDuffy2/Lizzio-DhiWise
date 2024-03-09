import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/custom_icon_button.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:spikeai/widgets/custom_text_form_field.dart';import 'widgets/cardlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';import 'package:spikeai/presentation/review_select_voucher_bottomsheet/review_select_voucher_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class ReviewEmptyScreen extends StatelessWidget {ReviewEmptyScreen({Key? key}) : super(key: key);

TextEditingController formDateEmptyController = TextEditingController();

TextEditingController formDateEmptyController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [_buildEstatesCardTransaction(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Period", style: theme.textTheme.titleMedium))), SizedBox(height: 16.v), _buildPeriodCheckin(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Note for Owner", style: theme.textTheme.titleMedium))), SizedBox(height: 16.v), _buildTelevision(context), SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Payment Method", style: theme.textTheme.titleMedium))), SizedBox(height: 14.v), _buildCardList(context), SizedBox(height: 37.v), _buildItemHeader(context), SizedBox(height: 55.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)]))))])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Transaction review")); } 
/// Section Widget
Widget _buildApartment(BuildContext context) { return CustomElevatedButton(height: 24.v, width: 72.h, text: "Apartment", leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100); } 
/// Section Widget
Widget _buildRent(BuildContext context) { return CustomElevatedButton(height: 50.v, width: 94.h, text: "Rent", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h)), buttonStyle: CustomButtonStyles.fillWhiteATL25, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.centerRight); } 
/// Section Widget
Widget _buildEstatesCardTransaction(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 140.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape20, height: 140.v, width: 168.h, radius: BorderRadius.circular(18.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h, right: 88.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 75.v), _buildApartment(context)])))])), Padding(padding: EdgeInsets.fromLTRB(16.h, 52.v, 9.h, 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 12.adaptSize, width: 12.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Jakarta, Indonesia", style: theme.textTheme.labelSmall))]), SizedBox(height: 18.v), _buildRent(context)]))])); } 
/// Section Widget
Widget _buildFormDateEmpty(BuildContext context) { return CustomTextFormField(width: 158.h, controller: formDateEmptyController, hintText: "Check In", hintStyle: CustomTextStyles.labelLargeOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 27.v, right: 30.h, bottom: 27.v)); } 
/// Section Widget
Widget _buildFormDateEmpty1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 11.h), child: CustomTextFormField(width: 158.h, controller: formDateEmptyController1, hintText: "Check Out", hintStyle: CustomTextStyles.labelLargeOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 27.v, right: 30.h, bottom: 27.v))); } 
/// Section Widget
Widget _buildPeriodCheckin(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFormDateEmpty(context), _buildFormDateEmpty1(context)])); } 
/// Section Widget
Widget _buildTelevision(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomTextFormField(controller: televisionController, hintText: "Write your note in here", hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v))); } 
/// Section Widget
Widget _buildCardList(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 180.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 3, itemBuilder: (context, index) {return CardlistItemWidget();}))); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Have a voucher?", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("click in here", style: CustomTextStyles.labelLargePrimary))])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [ReviewSelectVoucherBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapNext(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ReviewSelectVoucherBottomsheet(),isScrollControlled: true); } 
 }
