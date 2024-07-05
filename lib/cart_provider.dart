import 'dart:convert';

import 'package:api_revision/api_services.dart';
import 'package:api_revision/cart_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier
{
  bool isLoading = false;
  late CartModel cartModel;
  Future<void> fetchData()
  async {
    ApiServices apiServices = ApiServices();
    isLoading = true;
    notifyListeners();
    String? data = await apiServices.apiCalling();
    Map json = jsonDecode(data!);
    cartModel = CartModel(json);
    notifyListeners();
    isLoading = false;
    notifyListeners();
  }

  CartProvider()
  {
    fetchData();
  }

}