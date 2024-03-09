import 'widgets/messageslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:spikeai/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessagesListPage extends StatefulWidget {
  const MessagesListPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesListPageState createState() => MessagesListPageState();
}

class MessagesListPageState extends State<MessagesListPage>
    with AutomaticKeepAliveClientMixin<MessagesListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All chats",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 16.v),
                    _buildMessagesList(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessagesList(BuildContext context) {
    return ListView.separated(
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
      itemCount: 5,
      itemBuilder: (context, index) {
        return MessageslistItemWidget();
      },
    );
  }
}
