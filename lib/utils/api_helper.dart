import 'dart:convert';

import '../screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List<HomeModel>?> apiToList() async {
    String apiLink = "https://fakestoreapi.com/products";
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<HomeModel>? modelList =json.map((e) => HomeModel.mapToModel(e)).toList();
      return modelList;
    }
    return null;
  }
}
