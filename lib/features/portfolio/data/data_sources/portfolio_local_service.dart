import 'dart:io';

import 'package:dio/dio.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/data/models/language_skill.dart';
import 'package:portfolio/features/portfolio/data/models/personal_info.dart';

class PortfolioLocalService implements PortfolioDataSource {
  @override
  Future<Response<PersonalInfoModel>> getPersonalInfo() async {
    return Response(
      data: PersonalInfoModel(
        name: "Emanuele",
        surname: "Vinci",
        title: "Senior Flutter Developer",
        profileImageUrl: "https://example.com/profile.jpg",
        // metti un placeholder o un tuo link reale
        address: "Loc. Campara 23",
        city: "Pastrengo",
        country: "Italy",
        postalCode: "37010",
        birthDate: DateTime(1993, 4, 28),
        educationalQualification: "Diploma di Liceo Scientifico Tecnologico",
        languageSkills: [
          LanguageSkillModel(language: "Italian", proficiency: "Native"),
          LanguageSkillModel(language: "English", proficiency: "B2/C1"),
        ],
        email: "emanuele.vinci.dev@gmail.com",
        phone: "+39 334 1089441",
        aboutMe:
            "I am a Senior Flutter Developer with a strong background in building cross-platform apps for both mobile and web. Over the years I have delivered projects ranging from internal business tools to consumer apps, often leading the frontend side.I focus on scalable architectures, maintainable code, and smooth user experiences.I enjoy working in synergy with designers and backend engineers to bring ideas to production. Alongside client work, I explore game development and contribute to local tech communities.",
        aboutLabels: [
          "Flutter",
          "Remote only",
          "Freelance",
          "Clean Architecture",
          "Bloc",
          "SOLID",
        ],
      ),
      requestOptions: RequestOptions(path: ''),
      statusCode: HttpStatus.ok,
    );
  }
}
