import 'package:spikeai/presentation/home_tab_container_page/home_tab_container_page.dart';import 'package:spikeai/presentation/example_data_page/example_data_page.dart';import 'package:spikeai/presentation/vertical_page/vertical_page.dart';import 'package:spikeai/presentation/transaction_tab_container_page/transaction_tab_container_page.dart';import 'package:spikeai/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:spikeai/core/app_export.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Userprimary: return AppRoutes.homeTabContainerPage; case BottomBarEnum.Rewind: return AppRoutes.exampleDataPage; case BottomBarEnum.Favoritebluegray80001: return AppRoutes.verticalPage; case BottomBarEnum.Lock: return AppRoutes.transactionTabContainerPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeTabContainerPage: return HomeTabContainerPage(); case AppRoutes.exampleDataPage: return ExampleDataPage(); case AppRoutes.verticalPage: return VerticalPage(); case AppRoutes.transactionTabContainerPage: return TransactionTabContainerPage(); default: return DefaultWidget();} } 
 }
