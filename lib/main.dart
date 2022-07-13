import 'package:adaptive_theme/adaptive_theme.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:countersapp/themes.dart';
import 'package:flutter/material.dart';

import 'package:countersapp/Pages/Houses/TestList.dart';
import 'Pages/HomePage.dart';
import 'Pages/Houses/Gorbatova47.dart';
import 'Pages/Houses/Sovetskaya49.dart';

void main() {
  runApp(AdaptiveTheme(
    light: kLightTheme,
    dark: kDarkTheme,
    initial: AdaptiveThemeMode.light,
    builder: (light, dark) => MaterialApp(
      theme: light,
      darkTheme: dark,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage2(),
        '/Sov49_1': (context) => Sovetskaya49_1(),
        '/Gorb47': (context) => Gorbatova47(),
        '/Test': (context) => HomePage2(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Счетчики САКС',
    ),
  ));
}
