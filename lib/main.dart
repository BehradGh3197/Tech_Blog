import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: unused_import
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/splash_screen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: solidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: solidColors.systemNavigationBarColor
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('fa', '')],

      theme: ThemeData(
        fontFamily: "Vazir",
        brightness: Brightness.light,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: "Vazir",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: solidColors.posterTitle),

          titleMedium: TextStyle(
            fontFamily: "Vazir",
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: solidColors.posterSubTitle),

          
          bodyLarge: TextStyle(
            fontFamily: "Vazir",
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),

          displayMedium: TextStyle(
            fontFamily: "Vazir",
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),

          displaySmall: TextStyle(
            fontFamily: "Vazir",
            fontSize: 14,
            color: solidColors.seeMore,
            fontWeight: FontWeight.w700,
          ),

          headlineLarge: TextStyle(
            fontFamily: "Vazir",
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
