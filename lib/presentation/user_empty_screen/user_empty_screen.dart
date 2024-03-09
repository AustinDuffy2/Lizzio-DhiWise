import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_trailing_button.dart';import 'package:spikeai/widgets/custom_icon_button.dart';import 'package:spikeai/widgets/custom_text_form_field.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';import 'package:spikeai/presentation/user_success_bottomsheet/user_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class UserEmptyScreen extends StatelessWidget {UserEmptyScreen({Key? key}) : super(key: key);

TextEditingController lockController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 225.h, child: Text("Fill your information \nbelow👇 ", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50)))), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("You can edit this later on your account setting.", style: theme.textTheme.bodyMedium)), SizedBox(height: 54.v), Container(width: 100.h, margin: EdgeInsets.symmetric(horizontal: 113.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 27.v), CustomImageView(imagePath: ImageConstant.imgLockOnprimarycontainer, height: 42.v, width: 40.h), CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillBlueGrayTL15, alignment: Alignment.centerRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 30.v), _buildLock(context), SizedBox(height: 15.v), _buildMobileNumber(context), SizedBox(height: 15.v), _buildEmail(context), SizedBox(height: 42.v), CustomImageView(imagePath: ImageConstant.imgProgressBarGradient, height: 1.v, width: 100.h)]))))), bottomNavigationBar: _buildFinish(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildLock(BuildContext context) { return CustomTextFormField(controller: lockController, hintText: "Jonathan Anderson", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildMobileNumber(BuildContext context) { return CustomTextFormField(controller: mobileNumberController, hintText: "mobile number", hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.phone, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "user@email.com", hintStyle: CustomTextStyles.titleSmallBluegray50, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray50, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v), borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL12, fillColor: appTheme.blueGray600); } 
/// Section Widget
Widget _buildFinish(BuildContext context) { return CustomElevatedButton(text: "Finish", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapFinish(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [UserSuccessBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapFinish(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>UserSuccessBottomsheet(),isScrollControlled: true); } 
 }
