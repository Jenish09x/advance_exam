import 'package:advance_exam/utils/api_helper.dart';
import 'package:flutter/cupertino.dart';

import '../model/home_model.dart';

class HomeProvider with ChangeNotifier {

  List<HomeModel>? dataList = [];
  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    List<HomeModel>? l1 = await apiHelper.apiToList();
    dataList = l1;
    notifyListeners();
  }
}
