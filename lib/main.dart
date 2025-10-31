import 'package:flutter/material.dart';
import 'commons/themes/style_simple/theme.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const NaviguiApp());
}

class NaviguiApp extends StatelessWidget {
  const NaviguiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigui',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
