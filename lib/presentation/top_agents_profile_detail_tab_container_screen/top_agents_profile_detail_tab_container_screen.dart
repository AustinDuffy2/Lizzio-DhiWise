import 'package:spikeai/widgets/app_bar/custom_app_bar.dart';import 'package:spikeai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:spikeai/widgets/app_bar/appbar_subtitle.dart';import 'package:spikeai/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:spikeai/presentation/top_agents_profile_detail_page/top_agents_profile_detail_page.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';class TopAgentsProfileDetailTabContainerScreen extends StatefulWidget {const TopAgentsProfileDetailTabContainerScreen({Key? key}) : super(key: key);

@override TopAgentsProfileDetailTabContainerScreenState createState() =>  TopAgentsProfileDetailTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class TopAgentsProfileDetailTabContainerScreenState extends State<TopAgentsProfileDetailTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [SizedBox(height: 101.v, width: 100.h, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape19, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomElevatedButton(height: 28.v, width: 22.h, text: "1", margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.fillOrange, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700, alignment: Alignment.topLeft)])), SizedBox(height: 11.v), Text("Amanda", style: CustomTextStyles.titleSmallBold), SizedBox(height: 8.v), Text("amanda@email.com", style: CustomTextStyles.labelLargeBluegray600), SizedBox(height: 10.v), _buildTabview(context), SizedBox(height: 636.v, child: TabBarView(controller: tabviewController, children: [TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Profile"), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgTwitter, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 70.v, width: 326.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: Text("5.0")), Tab(child: Column(children: [Text("235"), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("Reviews"))])), Tab(child: Column(children: [Text("112"), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("Sold"))]))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
