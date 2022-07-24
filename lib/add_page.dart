import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather app'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        children: [
          const SizedBox(
            height: 200,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              hintText: "City",
            ),
            textAlign: TextAlign.center,
          ),
          CheckboxListTile(
            title: const Text('Favourite city'),
            secondary: const Icon(Icons.star),
            autofocus: false,
            activeColor: Colors.blue,
            checkColor: Colors.white,
            selected: _value,
            value: _value,
            onChanged: (bool? value) {
              setState(() {
                _value = value!;
              });
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Save city'),
          ),
        ],
      ),
    );
  }
}
