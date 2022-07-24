import 'package:flutter/material.dart';
import 'package:weather_app/add_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather app'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        if (_iconColor == Colors.grey) {
                          _iconColor = Colors.blue;
                        } else {
                          _iconColor = Colors.grey;
                        }
                      },
                    );
                  },
                  icon: const Icon(Icons.star),
                  color: _iconColor,
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.white,
                //     shape: const CircleBorder(),
                //   ),
                //   child: const Icon(
                //     Icons.star,
                //     color: Colors.blue,
                //   ),
                // ),
                const SizedBox(width: 10),
                const Text(
                  '20°C',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Warszawa',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  color: Colors.blue,
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.white,
                //     shape: const CircleBorder(),
                //   ),
                //   child: const Icon(
                //     Icons.delete,
                //     color: Colors.blue,
                //   ),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  color: Colors.blue,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.of(context).push(
                //       MaterialPageRoute(
                //         builder: (context) => const AddPage(),
                //       ),
                //     );
                //   },
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.white,
                //     shape: const CircleBorder(),
                //   ),
                //   child: const Icon(
                //     Icons.edit,
                //     color: Colors.blue,
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '22°C',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Poznan',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
