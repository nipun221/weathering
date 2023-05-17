import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget additionalInformation(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Wind',
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Humidity',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  wind,
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  humidity,
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Pressure',
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Feels like',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  pressure,
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  feelsLike,
                  style: infoFont,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
