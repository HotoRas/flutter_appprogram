import 'dart:convert';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class MyLocation {
  double? longitude, latitude;
  Future<void> getMyCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      print('permission: $permission');
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        return print('위치 권한 거부됨');
      }
      final LocationSettings locationSettings = LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 100);
      Position? position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
      print('position: $position');
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print('위치 정보 가져오기 실패: $e');
    }
  }
}

class Network {
  final String url;
  new(this.url);

  Future<dynamic> getJsonData() async {
    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      String data = res.body;
      var parsed = jsonDecode(data);

      return parsed;
    } else {
      throw HttpException('HTTP Request failed with code ${res.statusCode}');
    }
  }
}

class WeatherIcon {
  static String? getWeatherIcon(int cond) {
    if (cond < 0) return null;
    if (cond < 300) return 'cloud_lightening';
    if (cond < 600) return 'cloud_rain';
    if (cond < 700) return 'cloud_snow_alt';
    if (cond < 800) return 'sun';
    if (cond < 804) return 'cloud_sun';
    return null;
  }
}
