import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 100.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            temp,
            style: const TextStyle(fontSize: 36.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            location,
            style: const TextStyle(fontSize: 25.0),
          ),
        ]),
  );
}
