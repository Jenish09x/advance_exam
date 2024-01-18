import 'package:advance_exam/screen/detail/provider/detail_provider.dart';
import 'package:advance_exam/screen/home/provider/home_provider.dart';
import 'package:advance_exam/utils/screen_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
             ChangeNotifierProvider.value(value: HomeProvider(),),
             ChangeNotifierProvider.value(value: DetailProvider(),),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routes: screen_routes,
      ),
    ),
  );
}
