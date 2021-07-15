import 'package:flutter/material.dart';
import 'package:weather_app/container/loading_container.dart';
import 'package:weather_app/container/weather_container.dart';
import 'package:weather_app/models/index.dart';

import 'page_scaffold.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      index: 2,
      title: 'Weather',
      body: WeatherContainer(
        builder: (BuildContext context, CurrentWeather? weather) {
          return LoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return weather == null
                  ? Center(child: Text('ce e $weather weather'))
                  : Column(
                      children: <Widget>[
                        Text('${weather.temp} degrees'),
                        Text('${weather.humidity}% humidity'),
                      ],
                    );
            },
          );
        },
      ),
    );
  }
}
