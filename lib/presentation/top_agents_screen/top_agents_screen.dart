import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'widgets/datalist1_item_widget.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';class TopAgentsScreen extends StatelessWidget {const TopAgentsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 37.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Top Estate Agent", style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("Find the best recommendations place to live", style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataList(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildDataList(BuildContext context) { return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 207.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return Datalist1ItemWidget(onTapEstatesCardUser: () {onTapEstatesCardUser(context);});}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the topAgentsProfileDetailTabContainerScreen when the action is triggered.
onTapEstatesCardUser(BuildContext context) { Navigator.pushNamed(context, AppRoutes.topAgentsProfileDetailTabContainerScreen); } 
 }
