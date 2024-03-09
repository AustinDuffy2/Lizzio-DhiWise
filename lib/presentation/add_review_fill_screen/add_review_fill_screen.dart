import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/custom_rating_bar.dart';import 'package:spikeai/widgets/custom_text_form_field.dart';import 'widgets/addreviewfill_item_widget.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';import 'package:spikeai/presentation/add_review_success_bottomsheet/add_review_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class AddReviewFillScreen extends StatelessWidget {AddReviewFillScreen({Key? key}) : super(key: key);

TextEditingController formTextareaController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 49.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 272.h, margin: EdgeInsets.only(right: 55.h), child: Text("Hi, how was your overall\nexperience? 👋", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 27.v), Text("lorem ipsum dolor sit amet", style: theme.textTheme.bodySmall), SizedBox(height: 52.v), Padding(padding: EdgeInsets.only(right: 40.h), child: Row(children: [CustomRatingBar(initialRating: 0, itemSize: 40), Padding(padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), child: Text("4.0", style: CustomTextStyles.headlineSmallMontserrat))])), SizedBox(height: 20.v), CustomTextFormField(controller: formTextareaController, hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ", hintStyle: CustomTextStyles.labelLargeSemiBold, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v)), SizedBox(height: 15.v), _buildAddReviewFill(context)]))))])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Add Review")); } 
/// Section Widget
Widget _buildAddReviewFill(BuildContext context) { return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: 3, itemBuilder: (context, index) {return AddreviewfillItemWidget();}); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "Submit", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [AddReviewSuccessBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>AddReviewSuccessBottomsheet(),isScrollControlled: true); } 
 }
