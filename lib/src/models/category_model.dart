class CategoryModel {
  String? linkImage;
  String? label;

  CategoryModel({this.linkImage, this.label});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    linkImage = json['linkImage'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['linkImage'] = linkImage;
    data['label'] = label;
    return data;
  }
}
