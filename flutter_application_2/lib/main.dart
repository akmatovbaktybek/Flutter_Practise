import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffA2E2E1),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'First Screen of My Api',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Containers(
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Containers(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Containers(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.red,
          child: const Center(
              child: Text(
            '1',
            style: TextStyle(
              fontSize: 25,
            ),
          )),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          child: const Center(
              child: Text(
            '2',
            style: TextStyle(
              fontSize: 25,
            ),
          )),
        ),
        Container(
          height: 120,
          width: 120,
          color: Colors.green,
          child: const Center(
              child: Text(
            '3',
            style: TextStyle(
              fontSize: 25,
            ),
          )),
        )
      ],
    );
  }
}
