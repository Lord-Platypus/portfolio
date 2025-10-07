part of 'portfolio_cubit.dart';

sealed class PortfolioState extends Equatable {
  const PortfolioState({
    this.personalInfo,
    this.exception,
    this.technologySkills,
    this.workExperiences,
    this.educationElements,
  });

  final PersonalInfoEntity? personalInfo;
  final List<TechnologySkillGroupEntity>? technologySkills;
  final List<WorkExperienceEntity>? workExperiences;
  final List<EducationElementEntity>? educationElements;
  final DioException? exception;

  @override
  List<Object?> get props => [
    personalInfo!,
    technologySkills!,
    workExperiences!,
    educationElements!,
    exception,
  ];
}

final class PortfolioLoading extends PortfolioState {}

final class PortfolioDone extends PortfolioState {
  const PortfolioDone({
    required super.personalInfo,
    required super.technologySkills,
    required super.workExperiences,
    required super.educationElements,
  });
}

final class PortfolioError extends PortfolioState {
  const PortfolioError({required super.exception});
}
