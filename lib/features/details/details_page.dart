import 'package:flutter/material.dart';
import 'package:weather_app/widgets/textstyle.dart';
import 'package:weather_app/widgets/valuestyle.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detailed weather',
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Warszawa',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
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
                      children: [
                        Text('Temperature', style: titleFont),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Pressure', style: titleFont),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20°C',
                          style: valueFont,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '996 hPa',
                          style: valueFont,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wind', style: titleFont),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Humidity', style: titleFont),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '25 km/h',
                          style: valueFont,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '40%',
                          style: valueFont,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
