
import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:flutter/cupertino.dart';

class DetailProvider with ChangeNotifier
{
  List<HomeModel> cartList=[];

  void addData(HomeModel data)
  {
    cartList = data as List<HomeModel>;
    notifyListeners();
  }
}