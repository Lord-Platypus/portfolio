import 'package:equatable/equatable.dart';

class WorkExperienceEntity extends Equatable {
  final String companyName;
  final String position;
  final DateTime startDate;
  final DateTime? endDate;
  final String description;
  final List<String> projects;
  final List<String> technologies;

  const WorkExperienceEntity({
    required this.companyName,
    required this.position,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.projects,
    required this.technologies,
  });

  @override
  List<Object?> get props => [
    companyName,
    position,
    startDate,
    endDate,
    description,
    projects,
    technologies,
  ];
}
