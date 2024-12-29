import 'package:class_assignment_2/app.dart';
import 'package:class_assignment_2/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

//Initialize once in the very beginning

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(
    App(),
  );
}
