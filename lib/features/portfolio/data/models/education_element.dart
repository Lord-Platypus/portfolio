import '../../domain/entities/education_element.dart';

class EducationElementModel extends EducationElementEntity {
  const EducationElementModel({
    required super.title,
    required super.institution,
    required super.description,
    required super.startDate,
    super.endDate,
  });

  factory EducationElementModel.fromJson(Map<String, dynamic> json) {
    return EducationElementModel(
      title: json['title'],
      institution: json['institution'],
      description: json['description'],
      startDate: json['startDate'],
      endDate: json['endDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'institution': institution,
      'description': description,
      'startDate': startDate,
      'endDate': endDate,
    };
  }
}
