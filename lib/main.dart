import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mizan_app/views/splash_screen.dart';

void main() {
  runApp(const MizanApp());
}

class MizanApp extends StatelessWidget {
  const MizanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
      ],
      home: SplashScreen(),
    );
  }
}
