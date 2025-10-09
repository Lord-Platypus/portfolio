import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/extensions/build_context_extension.dart';
import '../../domain/usecases/get_education_elements.dart';
import '../../domain/usecases/get_personal_info.dart';
import '../../domain/usecases/get_technology_skills.dart';
import '../../domain/usecases/get_work_experiences.dart';
import '../cubit/portfolio_cubit.dart';
import '../widgets/about_section.dart';
import '../widgets/contacts_section.dart';
import '../widgets/education/education_section.dart';
import '../widgets/github_section.dart';
import '../widgets/hero_section.dart';
import '../widgets/technological_stack_section.dart';
import '../widgets/work/work_section.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PortfolioCubit(
        getPersonalInfoUserCase: GetIt.I<GetPersonalInfoUserCase>(),
        getTechnologySkillsCase: GetIt.I<GetTechnologySkillsCase>(),
        getWorkExperiencesCase: GetIt.I<GetWorkExperiencesCase>(),
        getEducationalElements: GetIt.I<GetEducationElementsCase>(),
      )..getPortfolioInfos(),
      child: Scaffold(
        body: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            switch (state) {
              case PortfolioLoading():
                return const Center(child: CircularProgressIndicator());
              case PortfolioDone():
                return _buildPage(context, state);
              case PortfolioError():
                return const Center(child: Icon(Icons.close));
            }
          },
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, PortfolioDone state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            child: Center(
              child: SizedBox(
                width: 1024,
                child: Column(
                  spacing: 64,
                  children: [
                    HeroSection(personalInfo: state.personalInfo!),
                    AboutSection(
                      aboutMe: state.personalInfo!.aboutMe,
                      labels: state.personalInfo!.aboutLabels,
                    ),
                    TechnologicalStackSection(
                      skillGroups: state.technologySkills!,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: context.appColors.secondary,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Center(
                child: SizedBox(
                  width: 1024,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      WorkSection(workExperiences: state.workExperiences!),
                      const GithubSection(),
                      const Divider(),
                      EducationSection(
                        educationElements: state.educationElements!,
                      ),
                      const Divider(),
                      ContactsSection(personalInfo: state.personalInfo!),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
