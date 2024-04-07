import 'package:flutter/material.dart';
import 'package:keaz_clone/core/themes/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keaz_clone/views/screens/auth/auth_screen.dart';
import 'package:keaz_clone/views/screens/home/home_screen.dart';
import 'package:keaz_clone/views/screens/home/onboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      useInheritedMediaQuery: true,
      splitScreenMode: false,
      builder: (context, child) => MaterialApp(
        theme: AppThemes.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/onboard',
        routes: {
          '/': (context) => const HomeScreen(),
          '/onboard': (_) => const OnBoard(),
          '/auth': (_) => const AuthScreen(),
        },
      ),
    );
  }
}
