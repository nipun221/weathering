import 'package:flutter/material.dart';
import 'package:weathering/model/weather_model.dart';
import 'package:weathering/services/weather_api_client.dart';
import 'package:weathering/views/additional_information.dart';
import 'package:weathering/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("Delhi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(20.0)),
                currentWeather(Icons.wb_cloudy_outlined, "${data!.temp}",
                    "${data!.cityName}"),
                const SizedBox(
                  height: 60.0,
                ),
                const Text(
                  'Additional Information!',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 20.0,
                ),
                additionalInformation("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feelsLike}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
