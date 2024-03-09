import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/custom_text_form_field.dart';import '../form_detail_screen/widgets/chipviewlayout1_item_widget.dart';import '../form_detail_screen/widgets/chipviewlayout3_item_widget.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';
// ignore_for_file: must_be_immutable
class FormDetailScreen extends StatelessWidget {FormDetailScreen({Key? key}) : super(key: key);

TextEditingController formPasswordController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 38.v), Container(width: 281.h, margin: EdgeInsets.only(left: 17.h, right: 62.h), child: Text("Hi Josh, Fill detail of your \nreal estate ", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 40.v), Padding(padding: EdgeInsets.symmetric(horizontal: 17.h), child: CustomTextFormField(controller: formPasswordController, hintText: "The Lodge House", hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, alignment: Alignment.center, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgHomeBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v))), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 17.h), child: Text("Listing type", style: theme.textTheme.titleMedium)), SizedBox(height: 20.v), _buildChipViewLayout1(context), SizedBox(height: 29.v), Padding(padding: EdgeInsets.only(left: 17.h), child: Text("Property category", style: theme.textTheme.titleMedium)), SizedBox(height: 20.v), _buildChipViewLayout2(context), SizedBox(height: 79.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, alignment: Alignment.center)])), bottomNavigationBar: _buildNextButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Listing")); } 
/// Section Widget
Widget _buildChipViewLayout1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 16.h), child: Wrap(runSpacing: 7.v, spacing: 7.h, children: List<Widget>.generate(2, (index) => Chipviewlayout1ItemWidget()))); } 
/// Section Widget
Widget _buildChipViewLayout2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 17.h), child: Wrap(runSpacing: 5.v, spacing: 5.h, children: List<Widget>.generate(5, (index) => Chipviewlayout3ItemWidget()))); } 
/// Section Widget
Widget _buildNextButton(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNextButton(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addLocationScreen when the action is triggered.
onTapNextButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addLocationScreen); } 
 }
