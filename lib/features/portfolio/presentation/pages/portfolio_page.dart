import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/features/portfolio/presentation/cubit/portfolio_cubit.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/about_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/contacts_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/education_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/hero_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/projects_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/technological_stack_section.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/work_section.dart';

import '../../domain/usecases/get_personal_info.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PortfolioCubit(
        getPersonalInfoUserCase: GetIt.I<GetPersonalInfoUserCase>(),
      )..getPortfolioInfos(),
      child: Scaffold(
        body: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            switch (state) {
              case PortfolioLoading():
                return const Center(child: CircularProgressIndicator());
              case PortfolioDone():
                return _buildPage(state);
              case PortfolioError():
                return const Center(child: Icon(Icons.close));
            }
          },
        ),
      ),
    );
  }

  Widget _buildPage(PortfolioDone state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            HeroSection(personalInfo: state.personalInfo!,),
            AboutSection(),
            TechnologicalStackSection(),
            WorkSection(),
            ProjectsSection(),
            EducationSection(),
            ContactsSection(),
          ],
        ),
      ),
    );
  }
}
