import 'dart:io';

import 'package:dio/dio.dart';

import '../../domain/enums/skill_level_enum.dart';
import '../models/education_element.dart';
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
        "https://drive.usercontent.google.com/download?id=1TdofDpn2iG6BQSQhPEomeVW-i3WVOQ_1",
        address: "Loc. Campara 23",
        city: "Pastrengo (VR)",
        country: "Italy",
        postalCode: "37010",
        email: "emanuele.vinci.dev@gmail.com",
        phone: "+39 334 1089441",
        vatNumber: "04702870231",
        aboutMe:
        "I am a Senior Flutter Developer with a strong background in building cross-platform applications for both mobile and web.\nOver the years, I have delivered projects ranging from internal business tools to consumer-facing apps, often leading the frontend side.\nI focus on scalable architectures, maintainable code, and smooth user experiences. I enjoy collaborating closely with designers and backend engineers to bring ideas to life.\nAlongside client work, I explore game development and contribute to local tech communities.",
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
  Future<
      Response<List<TechnologySkillGroupModel>>> getTechnologySkills() async {
    return Response(
      data: [
        TechnologySkillGroupModel(
          groupName: "Flutter",
          skills: [
            TechnologySkillModel(name: "Bloc", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "Equatable", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "GoRouter", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "GetIt", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "Fl Chart", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "Shared Preferences", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "Http", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "Intl", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "Dio", level: SkillLevelEnum.senior),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: "Programming Languages",
          skills: [
            TechnologySkillModel(name: "Dart", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "C#", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "SQL", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "JavaScript", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "TypeScript", level: SkillLevelEnum.middle),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: "Frameworks",
          skills: [
            TechnologySkillModel(name: "Flutter", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: ".NET Serenity", level: SkillLevelEnum.junior),
            TechnologySkillModel(name: "Godot", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "Unity", level: SkillLevelEnum.junior),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: "Backend & Databases",
          skills: [
            TechnologySkillModel(
                name: "Serverpod", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "Firebase", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "SQL", level: SkillLevelEnum.middle),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: "Tools",
          skills: [
            TechnologySkillModel(name: "Git", level: SkillLevelEnum.senior),
            TechnologySkillModel(name: "GitHub", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "Docker", level: SkillLevelEnum.junior),
            TechnologySkillModel(
                name: "Visual Studio Code", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "Android Studio", level: SkillLevelEnum.middle),
            TechnologySkillModel(name: "DevOps", level: SkillLevelEnum.middle),
          ],
        ),
        TechnologySkillGroupModel(
          groupName: "Other",
          skills: [
            TechnologySkillModel(
                name: "Clean Architecture", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "SOLID Principles", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "Agile Methodologies", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "Unit Testing", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "UI/UX Team Collaboration", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "Mentoring", level: SkillLevelEnum.middle),
            TechnologySkillModel(
                name: "Problem Solving", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "End-to-End Development", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "App Store Publishing", level: SkillLevelEnum.senior),
            TechnologySkillModel(
                name: "Play Store Publishing", level: SkillLevelEnum.senior),
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
          "Development of mobile and web applications in Flutter with a focus on authentication, external services integration, and frontend team coordination.",
          projects: [
            "App for elevator technicians",
            "Digital assistant for people on the autism spectrum",
            "Companion app for internal management system",
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
          "Development of native and web solutions for warehouse management and backend support.",
          projects: [
            "Wine warehouse management system",
            "Backend support (.NET Serenity + SQL Server)",
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
          "End-to-end development of native and web apps using Flutter for private companies.",
          projects: [
            "Delivery app for pastry shop",
            "Parking booking app",
            "Management system for orthopedic clinic",
            "App for post-operative eye tests",
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
          companyName: "Capgemini (at Arca Assicurazioni)",
          position: "Developer",
          startDate: DateTime(2019, 5),
          endDate: DateTime(2020, 2),
          description:
          "Batch development for task automation and complex database queries.",
          projects: ["Batch automation for internal processes"],
          technologies: ["Groovy", "Java", "PL/SQL", "Oracle DB"],
        ),
        WorkExperienceModel(
          companyName: "Accenture (at UnipolSai)",
          position: "Developer",
          startDate: DateTime(2018, 11),
          endDate: DateTime(2019, 5),
          description:
          "Maintenance and feature development on UnipolSai management system with Angular frontend and Java backend.",
          projects: ["UnipolSai Management System"],
          technologies: ["Angular", "Java", "Spring"],
        ),
        WorkExperienceModel(
          companyName: "Accenture (at Deutsche Bank)",
          position: "Developer",
          startDate: DateTime(2018, 8),
          endDate: DateTime(2018, 11),
          description: "Creation of queries and stored procedures on Oracle databases.",
          projects: ["Deutsche Bank Database Project"],
          technologies: ["Oracle DB", "PL/SQL"],
        ),
      ],
      requestOptions: RequestOptions(path: ''),
      statusCode: HttpStatus.ok,
    );
  }

  @override
  Future<Response<List<EducationElementModel>>> getEducationElements() async {
    return Response(
      data: [
        EducationElementModel(
          title: 'Algorithms and Data Structures',
          institution: 'Udemy',
          description: 'Advanced course on algorithms and data structures.',
          startDate: DateTime(2023, 6),
        ),
        EducationElementModel(
          title: 'Godot Course',
          institution: 'Udemy',
          description: 'Introduction to game development with Godot.',
          startDate: DateTime(2023, 9),
          endDate: DateTime(2024, 2),
        ),
        EducationElementModel(
          title: 'Unity Course',
          institution: 'Udemy',
          description: 'Foundations of game development in Unity.',
          startDate: DateTime(2021, 1),
          endDate: DateTime(2021, 4),
        ),
        EducationElementModel(
          title: 'Flutter Course',
          institution: 'Udacity',
          description: 'Cross-platform app development with Flutter.',
          startDate: DateTime(2019, 10),
          endDate: DateTime(2020, 1),
        ),
        EducationElementModel(
          title: 'Android Fundamentals',
          institution: 'Udacity',
          description: 'Basics of Android development using Java.',
          startDate: DateTime(2018, 6),
          endDate: DateTime(2019, 7),
        ),
        EducationElementModel(
          title: 'Java 8 Fundamentals',
          institution: 'Manpower',
          description: 'Introduction to the fundamentals of Java 8.',
          startDate: DateTime(2018, 6),
          endDate: DateTime(2018, 7),
        ),
        EducationElementModel(
          title: 'Bachelor’s Degree',
          institution: 'Politecnico di Milano',
          description: 'University program in computer engineering, currently on hold.',
          startDate: DateTime(2015, 10),
          endDate: DateTime(2018, 6),
        ),
      ],
      requestOptions: RequestOptions(path: ''),
      statusCode: HttpStatus.ok,
    );
  }
}
