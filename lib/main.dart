// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_portfolio/constants/app_theme.dart';
import 'package:my_portfolio/provider/project_provider.dart';
import 'package:my_portfolio/routes/app_route.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:my_portfolio/l10n/app_localizations.dart';

import 'package:my_portfolio/provider/providers.dart';

void main() async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String code = sp.getString("language_code") ?? "en";

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioProvider()),
        ChangeNotifierProvider(create: (_) => ProjectProvider()),
      ],
      child: Consumer(builder: (context, provider, child) {
        return MyApp(
          languageCode: code,
        );
      }),
    ),
  );
}

class MyApp extends StatefulWidget {
  final String languageCode;
  const MyApp({
    super.key,
    required this.languageCode,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, provider, child) {
      var w = context.watch<PortfolioProvider>();
      return MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('hi'),
        ],
        locale: Locale(w.code ?? "en"),
        debugShowCheckedModeBanner: false,
        darkTheme: AppTheme(fontFamily: 'poppins').dark,
        theme: AppTheme(fontFamily: 'poppins').light,
        themeMode: w.theme ?? ThemeMode.dark,
        // ThemeData(
        //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //     useMaterial3: true),
        routerConfig: AppRoutes.router,
        // change it to homepage
      );
    });
  }
}
