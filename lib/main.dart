import 'package:flutter/material.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/presentation/pages/app/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await App.init();
  runApp(const MyApp());
}
