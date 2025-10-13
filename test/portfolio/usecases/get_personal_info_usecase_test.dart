import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_local_service.dart';
import 'package:portfolio/features/portfolio/domain/entities/personal_info.dart';
import 'package:portfolio/features/portfolio/domain/repositories/portfolio_repository.dart';
import 'package:portfolio/features/portfolio/domain/usecases/get_personal_info.dart';

import 'get_personal_info_usecase_test.mocks.dart';

@GenerateMocks([PortfolioRepository])
void main() {
  late GetPersonalInfoUseCase useCase;
  late MockPortfolioRepository mockRepository;
  late PersonalInfoEntity expectedData;

  setUp(() async {
    mockRepository = MockPortfolioRepository();
    useCase = GetPersonalInfoUseCase(mockRepository);

    // Simulating expected results using local data
    final local = PortfolioLocalService();
    final response = await local.getPersonalInfo();
    expectedData = response.data!;
  });

  group("Test GetPersonalInfoUseCase", () {
    test('should get personal info from repository', () async {
      // Arrange
      when(
        mockRepository.getPersonalInfo(),
      ).thenAnswer((_) async => DataSuccess<PersonalInfoEntity>(expectedData));

      // Act
      final result = await useCase();

      // Assert
      expect(result, isA<DataSuccess<PersonalInfoEntity>>());
      expect(result.data, expectedData);
      verify(mockRepository.getPersonalInfo()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should fail getting personal info from repository', () async {
      // Arrange
      when(mockRepository.getPersonalInfo()).thenAnswer(
        (_) async => DataFailed<PersonalInfoEntity>(
          DioException(
            message: "Test error GetPersonalInfoUseCase",

            requestOptions: RequestOptions(),
          ),
        ),
      );

      // Act
      final result = await useCase();

      // Assert
      expect(result, isA<DataFailed>());
      expect(result.exception!.message, "Test error GetPersonalInfoUseCase");
    });
  });
}
