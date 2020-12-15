import 'package:flutter/material.dart';

import '../ui/environments.dart';

simpleScreen() => screen(
  child: Center(
    heightFactor: 3,
    child: gradientRoundedButton(
      onPressed: () => {},
      colors: [
        Color(0xFF6962E0),
        Color(0xFF518DF7),
      ]
    ),
  ),
);
