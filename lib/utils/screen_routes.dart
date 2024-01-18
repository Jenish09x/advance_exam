import 'package:advance_exam/screen/cart/view/cart_screen.dart';
import 'package:advance_exam/screen/detail/view/detail_screen.dart';
import 'package:flutter/material.dart';

import '../screen/home/view/home_screen.dart';
import '../screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder>screen_routes={
  '/':(context) => const SplashScreen(),
  'home':(context) => const HomeScreen(),
  'cart':(context) => const CartScreen(),
  'detail':(context) => const DetailScreen(),
};