import 'models.dart';

class Result<T> {
  bool? hasError;
  String? errorMessage;
  T? item;
  List<T>? items;

  Result({this.hasError, this.errorMessage, this.item, this.items});

  Result.fromJson(Map<String, dynamic> json) {
    hasError = json['hasError'];
    errorMessage = json['errorMessage'];
    item = json['item'] == null ? null : getModel(json['item']);
    items = json['items'] == null ? null : json["items"].map<T?>((object) =>getModel(object));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hasError'] = this.hasError;
    data['errorMessage'] = this.errorMessage;
    data['item'] = this.item;
    data['items'] = this.items;
    return data;
  }

  T? getModel(dynamic object) {
    switch (T) {
      case CategoryModel:
        return CategoryModel.fromJson(object) as T;
      default:
        return null;
    }
  }

  when(
      {required Function(List<T?>? items, T? item) success,
        required Function(String? message) error}) {
    if (hasError!) {
      error("status?.message");
      return;
    }
    success(items, item);
  }
}