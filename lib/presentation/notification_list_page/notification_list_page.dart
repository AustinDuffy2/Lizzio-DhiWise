import 'widgets/categorylist_item_widget.dart';
import 'widgets/notificationlist_item_widget.dart';
import 'widgets/samuelellalist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationListPage extends StatefulWidget {
  const NotificationListPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationListPageState createState() => NotificationListPageState();
}

class NotificationListPageState extends State<NotificationListPage>
    with AutomaticKeepAliveClientMixin<NotificationListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 4.v),
                      _buildCategoryList(context),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            _buildNotificationList(context),
                            SizedBox(height: 37.v),
                            Text(
                              "Older notifications",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.v),
                            _buildSamuelEllaList(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryList(BuildContext context) {
    return SizedBox(
      height: 54.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 8.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return CategorylistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return NotificationlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSamuelEllaList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return SamuelellalistItemWidget();
        },
      ),
    );
  }
}
