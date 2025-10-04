import 'dart:io';

import 'package:dio/dio.dart';

import '../resources/data_state.dart';

Future<DataState<T>> safeApiCall<T>(
  Future<Response<T>> Function() apiCall,
) async {
  try {
    final response = await apiCall();

    if (response.statusCode == HttpStatus.ok && response.data != null) {
      return DataSuccess(response.data as T);
    }

    return DataFailed(
      DioException(
        error: response.statusMessage,
        response: response,
        type: DioExceptionType.badResponse,
        requestOptions: response.requestOptions,
      ),
    );
  } on DioException catch (e) {
    return DataFailed(e);
  } catch (e) {
    return DataFailed(
      DioException(
        error: e.toString(),
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.unknown,
      ),
    );
  }
}
