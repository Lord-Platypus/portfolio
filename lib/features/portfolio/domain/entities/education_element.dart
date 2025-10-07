import 'package:equatable/equatable.dart';

class EducationElementEntity extends Equatable {
  final String title;
  final DateTime startDate;
  final DateTime? endDate;

  const EducationElementEntity({
    required this.title,
    required this.startDate,
    this.endDate,
  });

  @override
  List<Object?> get props => [title, startDate, endDate];
}
