library marquee;

import 'dart:math';

import 'package:flutter/material.dart';

part 'marquee_state.dart';

class Marquee extends StatefulWidget {
  final Iterable<String> messages;
  const Marquee({super.key, required this.messages});

  @override
  State<StatefulWidget> createState() {
    return MarqueeState();
  }
}
