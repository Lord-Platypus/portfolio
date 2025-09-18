import 'package:equatable/equatable.dart';

class LanguageSkillEntity extends Equatable{
  final String language;
  final String proficiency;

  const LanguageSkillEntity({
    required this.language,
    required this.proficiency,
  });

  @override
  List<Object?> get props => [language, proficiency];

}