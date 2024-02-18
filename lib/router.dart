// import 'package:amazon_clone_tutorial/common/widgets/bottom_bar.dart';
// import 'package:amazon_clone_tutorial/features/address/screens/address_screen.dart';
// import 'package:amazon_clone_tutorial/features/admin/screens/add_product_screen.dart';
import 'package:amazon_clone_tutorial/features/auth/screens/auth_screen.dart';
// import 'package:amazon_clone_tutorial/features/home/screens/category_deals_screen.dart';
// import 'package:amazon_clone_tutorial/features/home/screens/home_screen.dart';
// import 'package:amazon_clone_tutorial/features/order_details/screens/order_details.dart';
// import 'package:amazon_clone_tutorial/features/product_details/screens/product_details_screen.dart';
// import 'package:amazon_clone_tutorial/features/search/screens/search_screen.dart';
// import 'package:amazon_clone_tutorial/models/order.dart';
// import 'package:amazon_clone_tutorial/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
