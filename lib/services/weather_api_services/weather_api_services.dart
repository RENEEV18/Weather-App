import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/common/api/api_baseurl.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/utils/exceptions.dart';

class WeatherApiService {
  Future<WeatherModel?> getWeather(context) async {
    final Dio dio = Dio();
    try {
      final Response response =
          await dio.get(ApiBaseUrl.apiBaseUrl, queryParameters: {
        "key": "a066941d1b1246f6a1971636231602",
        "q": "india",
        "api": "no",
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final weatherResult = WeatherModel.fromJson(response.data);
        return weatherResult;
      }
    } on DioError catch (e) {
      log(e.message.toString());
      DioException().dioError(e, context);
    }
    return null;
  }
}
