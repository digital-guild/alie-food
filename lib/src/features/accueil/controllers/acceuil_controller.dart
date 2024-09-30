import 'package:alie/src/api/api.dart';
import 'package:alie/src/models/data_request.dart';
import 'package:alie/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final accountControllerProvider = ChangeNotifierProvider((ref) => AccueilController());

class AccueilController extends ChangeNotifier {
  final ApiClient<CategoryModel> _apiClient = ApiClient();
  List<Categories> _categories = [];
  bool _isLoading = false;

  getCategories() async {
    _isLoading = true;
    notifyListeners();
    var response = await _apiClient.request(
      "https://us-central1-alie-food.cloudfunctions.net/getAllCategories",
      DataRequestModel(data: Data()),
    );

    _isLoading = false;
    notifyListeners();

    if(response.result?.hasError == true) {
      _categories = [];
      notifyListeners();
      return;
    }

    _categories = response.result?.categories ?? [];
  }

  List<Categories?> get categories => _categories;

  bool get isLoading => _isLoading;
}
