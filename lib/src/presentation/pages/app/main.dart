import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/theme.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/router/routes.dart';
import 'package:passguard/src/presentation/pages/auth/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers.router.generator,
      theme: ThemeApp.mode,
      navigatorKey: App.rootWidgetKey,
      home: AuthPageMain(),
    );
  }
}
