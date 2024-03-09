import 'package:spikeai/widgets/custom_text_form_field.dart';
import 'package:spikeai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentPaypalPage extends StatefulWidget {
  const PaymentPaypalPage({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentPaypalPageState createState() => PaymentPaypalPageState();
}

class PaymentPaypalPageState extends State<PaymentPaypalPage>
    with AutomaticKeepAliveClientMixin<PaymentPaypalPage> {
  TextEditingController lockController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                CustomTextFormField(
                  controller: lockController,
                  hintText: "Jonathan",
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(50.h),
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLockBlueGray80001,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                ),
                SizedBox(height: 15.v),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "user@email.com",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgDownload,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 1.v,
                  width: 100.h,
                ),
                SizedBox(height: 10.v),
                CustomElevatedButton(
                  text: "Next",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
