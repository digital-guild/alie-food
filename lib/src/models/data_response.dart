import 'package:alie/src/models/models.dart';
import 'package:alie/src/models/result_model.dart';

class DataResponseModel {
  Result? result;

  DataResponseModel({this.result});

  DataResponseModel.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  bool? hasError;
  List<Categories>? categories;

  Result({this.hasError, this.categories});

  Result.fromJson(Map<String, dynamic> json) {
    hasError = json['hasError'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasError'] = this.hasError;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? linkImage;
  String? label;

  Categories({this.linkImage, this.label});

  Categories.fromJson(Map<String, dynamic> json) {
    linkImage = json['linkImage'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkImage'] = this.linkImage;
    data['label'] = this.label;
    return data;
  }
}

