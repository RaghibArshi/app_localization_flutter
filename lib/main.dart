import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:youtube_project/HomeScreen.dart';
import 'package:youtube_project/localization/locales.dart';

Future main() async{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    configuringLocalization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      home: HomeScreen(),
    );
  }

  configuringLocalization(){
    localization.init(mapLocales: LOCALE, initLanguageCode: "en");
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  onTranslatedLanguage(Locale? locale){
    setState(() {

    });
  }

}
