import '../../domain/entities/work_experience.dart';

class WorkExperienceModel extends WorkExperienceEntity {
  const WorkExperienceModel({
    required super.companyName,
    required super.position,
    required super.startDate,
    required super.endDate,
    required super.description,
    required super.projects,
    required super.technologies,
  });

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) {
    return WorkExperienceModel(
      companyName: json['companyName'],
      position: json['position'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      description: json['description'],
      projects: List.from(json['projects'] ?? []),
      technologies: List<String>.from(json['technologies'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'companyName': companyName,
      'position': position,
      'startDate': startDate,
      'endDate': endDate,
      'description': description,
      'projects': projects,
      'technologies': technologies,
    };
  }
}
