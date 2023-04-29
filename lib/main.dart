import 'package:animation/components/marquee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          child: Marquee(
            messages: [for (final index in Iterable<int>.generate(10, (index) => index + 1)) 'message $index'],
          ),
        ),
      ),
    ),
  );
}
