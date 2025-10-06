part of 'portfolio_cubit.dart';

sealed class PortfolioState extends Equatable {
  const PortfolioState({
    this.personalInfo,
    this.exception,
    this.technologySkills,
    this.workExperiences,
  });

  final PersonalInfoEntity? personalInfo;
  final List<TechnologySkillGroupEntity>? technologySkills;
  final List<WorkExperienceEntity>? workExperiences;
  final DioException? exception;

  @override
  List<Object?> get props => [
    personalInfo!,
    technologySkills!,
    workExperiences!,
    exception,
  ];
}

final class PortfolioLoading extends PortfolioState {}

final class PortfolioDone extends PortfolioState {
  const PortfolioDone({
    required super.personalInfo,
    required super.technologySkills,
    required super.workExperiences,
  });
}

final class PortfolioError extends PortfolioState {
  const PortfolioError({required super.exception});
}
