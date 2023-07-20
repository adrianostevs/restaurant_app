import 'package:dio/dio.dart';
import 'package:restaurant_app/data/service/api_constants.dart';
import 'package:restaurant_app/data/service/remote_source.dart';

import '../model/response/api_error.dart';

class RemoteClient {
  final dio = Dio();

  Future<RemoteSource<dynamic>> _handleResult<T>(Response response) async {
    final responseBody = response;
    if (response.statusCode != null) {
      if (response.statusCode! >= 200 && response.statusCode! < 299) {
        return RemoteSource.success(data: responseBody);
      } else if (response.statusCode! >= 300) {
        final responseBody = response;
        APIError apiError;
        try {
          apiError = APIError.fromJson(responseBody as dynamic);
        } catch (e) {
          apiError = APIError(
              statusCode: response.statusCode ?? 500,
              message: "Terjadi kesalahan, silahkan coba beberapa saat lagi.");
        }
        return RemoteSource.error(error: apiError);
      } else {
        return RemoteSource.error(
            error: APIError(
                message: response.statusMessage ?? "Terjadi Kesalahan",
                statusCode: 500));
      }
    } else {
      int code = 999;
      if (response.statusMessage?.contains("SocketException") == true) {
        return RemoteSource.error(
            error: APIError(message: "No Connection", statusCode: code));
      } else {
        return RemoteSource.error(
            error: APIError(message: "Terjadi Kesalahan", statusCode: code));
      }
    }
  }

  Future<RemoteSource<dynamic>> get(String url, dynamic query) async {
    Response response;
    response =
        await dio.get(ApiConstants.BASE_URL + url, queryParameters: query);
    return _handleResult(response);
  }

  Future<dynamic> post(String url, dynamic data) async {
    Response response;
    response = await dio.post(ApiConstants.BASE_URL + url, data: data);
    return _handleResult(response);
  }
}
