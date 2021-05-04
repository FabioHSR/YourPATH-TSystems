import 'dart:convert';

class RequirementModel {
  String title;
  bool checked;

  RequirementModel({
    this.title,
    this.checked,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'checked': checked,
    };
  }

  factory RequirementModel.fromMap(Map<String, dynamic> map) {
    return RequirementModel(
      title: map['title'],
      checked: map['checked'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RequirementModel.fromJson(String source) =>
      RequirementModel.fromMap(json.decode(source));
}
