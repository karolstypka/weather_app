import 'package:flutter/material.dart';

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
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Warszawa',
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text(
                  'Temperature',
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Pressure',
                ),
              ],
            ),
            Row(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Humidity',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Wind',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
