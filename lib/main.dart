import 'dart:ui';

import 'package:flutter/material.dart';

import 'app.dart';
import 'generated/share_variables.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  runApp(App(sharedVariables: shareVariables));
}
