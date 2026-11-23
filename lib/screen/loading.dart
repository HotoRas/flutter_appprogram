import 'package:flutter_appprogram_20231023/future/weatherapp.dart';
import 'package:flutter_appprogram_20231023/logger.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../env/env.dart'; // gitignore

import 'package:material_ui/material_ui.dart';

class Loading extends StatefulWidget {
  const new({super.key});
  @override
  createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? longitude, latitude;
  void _getLocation() async {
    MyLocation location = MyLocation();
    await location.getMyCurrentLocation();

    longitude = location.longitude;
    latitude = location.latitude;
    if (longitude == null || latitude == null) {
      Logger.log('location is null');
      return;
    }
    Network network = Network(
      'https://api.openweathermap.org/data/2.5/weather?'
      'lat=$latitude&lon=$longitude&appid=${ApiKeyStorage.openWeatherAPI}&units=metric',
    );
    try {
      var weatherData = await network.getJsonData();
      if (!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => WeatherScreen(weatherData)));
    } catch (e) {
      Fluttertoast.showToast(msg: 'An error has occured:\n$e');
      if (mounted) Navigator.pop(context);
    }
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  @override
  build(BuildContext context) => Scaffold(
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    body: Center(child: SpinKitDoubleBounce(color: Colors.white, size: 80)),
  );
}

class WeatherScreen extends StatefulWidget {
  final dynamic weatherData;
  const new(this.weatherData, {super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String? cityName;
  int? myTemp;
  Widget? icon;

  void updateData(dynamic weather) {
    cityName = weather['name'];
    double temp = weather['main']['temp'];
    myTemp = temp.round();
    int condition = weather['weather'][0]['id'];
    Logger.log('cond value: $condition');
    String? weatherIcon = WeatherIcon.getWeatherIcon(condition);
    if (weatherIcon == null) {
      icon = SizedBox.shrink();
    } else {
      icon = SvgPicture.asset('images/svg-weather/$weatherIcon.svg', colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn));
    }
  }

  @override
  initState() {
    super.initState();
    updateData(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.lightBlueAccent,
    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              '$cityName',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              '$myTemp\u2103',
              style: TextStyle(fontSize: 85, fontWeight: FontWeight.w300, color: Colors.white),
            ),
            icon ?? SizedBox.shrink(),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => Loading())),
              child: Text('Refresh Data'),
            ),
          ],
        ),
      ),
    ),
  );
}
