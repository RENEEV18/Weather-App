import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/services/weather_api_services/weather_api_services.dart';

class HomeController extends ChangeNotifier {
  HomeController(context) {
    getWeather(context);
  }
  bool isLoading = false;
  WeatherModel? model;
  Future<void> getWeather(context) async {
    isLoading = true;
    notifyListeners();
    WeatherApiService().getWeather(context).then(
      (value) {
        if (value != null) {
          model = value;
          notifyListeners();
        } else {
          isLoading = false;
          notifyListeners();
        }
      },
    );
  }
}
