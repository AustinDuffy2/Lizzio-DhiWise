import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/custom_text_form_field.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

TextEditingController lockEditTextController = TextEditingController();

TextEditingController settingsEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgShape34, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h)), SizedBox(height: 30.v), _buildLockEditText(context), SizedBox(height: 15.v), _buildSettingsEditText(context), SizedBox(height: 15.v), _buildEmailEditText(context), SizedBox(height: 15.v), _buildUnlink(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildChooseLocationButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Edit Profile")); } 
/// Section Widget
Widget _buildLockEditText(BuildContext context) { return CustomTextFormField(controller: lockEditTextController, hintText: "Jonathan Anderson", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildSettingsEditText(BuildContext context) { return CustomTextFormField(controller: settingsEditTextController, hintText: "+12 345-7890-1234", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return CustomTextFormField(controller: emailEditTextController, hintText: "user@email.com", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildUnlinkButton(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "Unlink", margin: EdgeInsets.only(right: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1)); } 
/// Section Widget
Widget _buildLinkButton(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "Link", margin: EdgeInsets.only(left: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL25, buttonTextStyle: CustomTextStyles.labelLargeSemiBold)); } 
/// Section Widget
Widget _buildUnlink(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUnlinkButton(context), _buildLinkButton(context)]); } 
/// Section Widget
Widget _buildChooseLocationButton(BuildContext context) { return CustomElevatedButton(text: "Choose location", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
