import 'package:equatable/equatable.dart';

class EducationElementEntity extends Equatable {
  final String title;
  final String institution;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;

  const EducationElementEntity({
    required this.title,
    required this.institution,
    required this.description,
    required this.startDate,
    this.endDate,
  });

  @override
  List<Object?> get props =>
      [title, institution, description, startDate, endDate];
}
