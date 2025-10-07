import '../../domain/entities/education_element.dart';

class EducationElementModel extends EducationElementEntity {
  const EducationElementModel({
    required super.title,
    required super.startDate,
    super.endDate,
  });

  factory EducationElementModel.fromJson(Map<String, dynamic> json) {
    return EducationElementModel(
      title: json['title'],
      startDate: json['startDate'],
      endDate: json['endDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'startDate': startDate, 'endDate': endDate};
  }
}
