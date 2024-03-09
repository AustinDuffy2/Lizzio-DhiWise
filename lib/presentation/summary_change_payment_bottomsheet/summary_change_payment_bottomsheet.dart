import 'widgets/summarychange_item_widget.dart';import 'package:spikeai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';import 'package:spikeai/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';class SummaryChangePaymentBottomsheet extends StatelessWidget {const SummaryChangePaymentBottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 60.h, child: Divider()), SizedBox(height: 36.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Change Payment", style: CustomTextStyles.titleMediumBold))), SizedBox(height: 14.v), _buildSummaryChange(context), SizedBox(height: 50.v), CustomElevatedButton(text: "Select Payment", margin: EdgeInsets.symmetric(horizontal: 24.h), onPressed: () {onTapSelectPayment(context);})])); } 
/// Section Widget
Widget _buildSummaryChange(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 180.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 3, itemBuilder: (context, index) {return SummarychangeItemWidget();}))); } 

/// Shows a modal bottom sheet with [SummarySuccessBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSelectPayment(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SummarySuccessBottomsheet(),isScrollControlled: true); } 
 }
