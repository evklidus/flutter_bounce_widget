import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bounce_widget/flutter_bounce_widget.dart';

void main(List<String> args) {
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter_bounce_widget'),
        ),
        body: BounceWidget(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Example',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          onPressed: () {
            log('Pressed !)');
          },
        ),
      ),
    );
  }
}
