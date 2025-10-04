part of 'portfolio_cubit.dart';

sealed class PortfolioState extends Equatable {
  const PortfolioState({
    this.personalInfo,
    this.exception,
    this.technologySkills,
  });

  final PersonalInfoEntity? personalInfo;
  final List<TechnologySkillGroupEntity>? technologySkills;
  final DioException? exception;

  @override
  List<Object?> get props => [personalInfo!, technologySkills!, exception];
}

final class PortfolioLoading extends PortfolioState {}

final class PortfolioDone extends PortfolioState {
  const PortfolioDone({
    required super.personalInfo,
    required super.technologySkills,
  });
}

final class PortfolioError extends PortfolioState {
  const PortfolioError({required super.exception});
}
