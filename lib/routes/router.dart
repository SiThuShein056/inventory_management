import 'package:flutter/cupertino.dart';
import 'package:inventory_management/views/create_new_shop/screens/create_new_shop.dart';
import 'package:inventory_management/views/shop/screens/shop_screen.dart';

import 'route_names.dart';

Route router(RouteSettings settings) {
  switch (settings.name) {
    case shopList:
      return _route(const ShopScreen(), settings);
    case createShop:
      return _route(const CreateNewShopScreen(), settings);
    default:
      return _route(const ShopScreen(), settings);
  }
}

Route _route(Widget child, RouteSettings settings) {
  return CupertinoPageRoute(
    builder: (_) {
      return child;
    },
    settings: settings,
  );
}
