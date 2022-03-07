// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    // * Size scrren
    final size = MediaQuery.of(context).size;

    return MaterialApp(
        title: 'Count App',
        home: Scaffold(
          body: Container(
            width: size.width,
            height: size.height,
            child: _designPage(),
            color: const Color.fromARGB(255, 14, 94, 160),
          ),
          floatingActionButton: _floatingActionButton(),
        ));
  }

  Widget _designPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Count: $count',
            style: const TextStyle(fontSize: 30, color: Colors.white)),
      ],
    );
  }

  Widget _floatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            _modifyCount(-1);
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            _modifyCount(1);
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  _modifyCount(int value) {
    setState(() {
      count += value;
    });
  }
}
