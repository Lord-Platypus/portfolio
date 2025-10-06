import 'dart:io';

import 'package:dio/dio.dart';

import '../../domain/enums/skill_level_enum.dart';
import '../models/language_skill.dart';
import '../models/personal_info.dart';
import '../models/technology_skill.dart';
import '../models/technology_skill_group.dart';
import '../models/work_experience.dart';
import 'portfolio_data_source.dart';

class PortfolioLocalService implements PortfolioDataSource {
  @override
  Future<Response<PersonalInfoModel>> getPersonalInfo() async {
    return Response(
      data: PersonalInfoModel(
        name: "Emanuele",
        surname: "Vinci",
        title: "Senior Flutter Developer",
        profileImageUrl:
            "https://i.pinimg.com/736x/a7/20/12/a72012de9e71f2b6676f8417c462e57c.jpg",
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

  @override
  Future<Response<List<TechnologySkillGroupModel>>>
  getTechnologySkills() async {
    return Response(
      data: [
        TechnologySkillGroupModel(
          groupName: "Flutter",
          skills: [
            TechnologySkillModel(name: "Bloc", level: SkillLevelEnum.senior),
            TechnologySkillModel(
              name: "Equatable",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "GoRouter",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(name: "GetIt", level: SkillLevelEnum.senior),

            TechnologySkillModel(
              name: "Fl Chart",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Shared Preferences",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(name: "Http", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "Intl", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "Dio", level: SkillLevelEnum.senior),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: 'Programming Languages',
          skills: [
            TechnologySkillModel(name: "Dart", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "C#", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "SQL", level: SkillLevelEnum.middle),
            TechnologySkillModel(
              name: "JavaScript",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "TypeScript",
              level: SkillLevelEnum.middle,
            ),
          ],
        ),

        TechnologySkillGroupModel(
          groupName: 'Frameworks',
          skills: [
            TechnologySkillModel(name: "Flutter", level: SkillLevelEnum.senior),
            TechnologySkillModel(
              name: ".NET Serenity",
              level: SkillLevelEnum.junior,
            ),
            TechnologySkillModel(name: "Godot", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "Unity", level: SkillLevelEnum.junior),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: 'Backend & Databases',
          skills: [
            TechnologySkillModel(
              name: "Serverpod",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Firebase",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(name: "SQL", level: SkillLevelEnum.middle),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: 'Tools',
          skills: [
            TechnologySkillModel(name: "Git", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "GitHub", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "Docker", level: SkillLevelEnum.junior),
            TechnologySkillModel(
              name: "Visual Studio Code",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Android Studio",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(name: "DevOps", level: SkillLevelEnum.middle),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: 'Other',
          skills: [
            TechnologySkillModel(
              name: "Clean Architecture",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "Solid Principles",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Agile Methodologies",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Unit Testing",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "UI/UX Team Collaboration",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "Mentoring",
              level: SkillLevelEnum.middle,
            ),
            TechnologySkillModel(
              name: "Problem Solving",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "End-to-End Development",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "App-Store publishing",
              level: SkillLevelEnum.senior,
            ),
            TechnologySkillModel(
              name: "Play Store publishing",
              level: SkillLevelEnum.senior,
            ),
          ],
        ),
      ],
      requestOptions: RequestOptions(path: ''),
      statusCode: HttpStatus.ok,
    );
  }

  @override
  Future<Response<List<WorkExperienceModel>>> getWorkExperiences() async {
    return Response(
      data: [
        WorkExperienceModel(
          companyName: "Qbitsoft",
          position: "Senior Flutter Developer",
          startDate: DateTime(2024, 10),
          endDate: null,
          description:
              "Sviluppo di applicazioni mobile e web in Flutter con focus su autenticazione, integrazione servizi esterni e gestione team frontend.",
          projects: [
            "App per ascensoristi",
            "Assistente digitale per persone nello spettro autistico",
            "Companion app per gestionale interno",
          ],
          technologies: [
            "Flutter",
            "Auth0",
            "Firebase",
            "REST API",
            "Tensorflow Lite",
            "Unity AR",
          ],
        ),
        WorkExperienceModel(
          companyName: "Dreaming Lab",
          position: "Senior Flutter Developer",
          startDate: DateTime(2021, 11),
          endDate: DateTime(2024, 10),
          description:
              "Sviluppo di soluzioni native e web per gestione magazzini e supporto al backend.",
          projects: [
            "Gestionale magazzino vini",
            "Supporto backend .NET (Serenity + SQL Server)",
          ],
          technologies: [
            "Flutter",
            "Auth0",
            "Firebase",
            "fl_chart",
            "PDF generation",
            "Responsive UI",
            ".NET",
            "SQL Server",
          ],
        ),
        WorkExperienceModel(
          companyName: "Freelance",
          position: "Full Stack Developer",
          startDate: DateTime(2020, 2),
          endDate: null,
          description:
              "Sviluppo end-to-end di app native e web con Flutter per aziende private.",
          projects: [
            "Delivery per pasticceria",
            "App prenotazione parcheggi",
            "Gestionale studio medico ortopedico",
            "App per test oculistici post-operatori",
          ],
          technologies: [
            "Flutter",
            "Firebase",
            "Stripe",
            "Google Maps API",
            "Flutter Web",
            "REST API",
            "In-app Purchase",
          ],
        ),
        WorkExperienceModel(
          companyName: "Capgemini (presso Arca Assicurazioni)",
          position: "Developer",
          startDate: DateTime(2019, 5),
          endDate: DateTime(2020, 2),
          description:
              "Sviluppo batch per automazione task e query complesse su database.",
          projects: ["Automazione batch per task interni"],
          technologies: ["Groovy", "Java", "PL/SQL", "Oracle DB"],
        ),
        WorkExperienceModel(
          companyName: "Accenture (presso UnipolSai)",
          position: "Developer",
          startDate: DateTime(2018, 11),
          endDate: DateTime(2019, 5),
          description:
              "Evolutive e bug fixes su gestionale UnipolSai con Angular frontend e Java backend.",
          projects: ["Gestionale UnipolSai"],
          technologies: ["Angular", "Java", "Spring"],
        ),
        WorkExperienceModel(
          companyName: "Accenture (presso Deutsche Bank)",
          position: "Developer",
          startDate: DateTime(2018, 8),
          endDate: DateTime(2018, 11),
          description: "Creazione query e procedure su database Oracle.",
          projects: ["Database Deutsche Bank"],
          technologies: ["Oracle DB", "PL/SQL"],
        ),
      ],
      requestOptions: RequestOptions(path: ''),
      statusCode: HttpStatus.ok,
    );
  }
}
