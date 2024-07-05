import 'dart:convert';

import 'package:api_revision/api_services.dart';
import 'package:api_revision/cart_model.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier
{
  bool isLoading = false;
  late NewsModel newsModel;

  // Future<void> fetchData()
  // async {
  //   print("-----------fetch data called-------------");
  //   isLoading = true;
  //   notifyListeners();
  //   ApiServices apiServices = ApiServices();
  //   // String? data = await apiServices.apiCalling();
  //   print(data);
  //   Map json = jsonDecode(data!);
  //   print(json);
  //   newsModel = NewsModel(json);
  //   print(newsModel.articles[0].title + "-----------------------------");
  //   // notifyListeners();
  //   isLoading = false;
  //   notifyListeners();
  // }

  NewsProvider()
  {
    print("--------------------Constructor called----------------");
    // fetchData();
  }

}
