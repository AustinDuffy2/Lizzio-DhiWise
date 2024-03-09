import 'widgets/userreviewslist_item_widget.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';class ReviewsPage extends StatefulWidget {const ReviewsPage({Key? key}) : super(key: key);

@override ReviewsPageState createState() =>  ReviewsPageState();

 }
class ReviewsPageState extends State<ReviewsPage> with  AutomaticKeepAliveClientMixin<ReviewsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("User reviews", style: theme.textTheme.titleMedium), SizedBox(height: 16.v), _buildUserReviewsList(context)]))]))))); } 
/// Section Widget
Widget _buildUserReviewsList(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: 3, itemBuilder: (context, index) {return UserreviewslistItemWidget();}); } 
 }
