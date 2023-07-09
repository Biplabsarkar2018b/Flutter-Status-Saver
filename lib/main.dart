import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver/pages/splash_page.dart';
import 'package:status_saver/providers/bottom_nav_provider.dart';
import 'package:status_saver/providers/get_statuses_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: SplashScreen(),
    // );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => GetStatusesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
