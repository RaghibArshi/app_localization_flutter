import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:youtube_project/localization/locales.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FlutterLocalization flutterLocalization;
  late String currentlyLocalized;

  @override
  void initState() {
    super.initState();
    flutterLocalization = FlutterLocalization.instance;
    currentlyLocalized = flutterLocalization.currentLocale!.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleData.appBarTitle.getString(context)),
        backgroundColor: Colors.green.shade700,
        actions: [
          DropdownButton(
              items: const[
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ae', child: Text('Arabic')),
                DropdownMenuItem(value: 'zh', child: Text('Chinese')),
                DropdownMenuItem(value: 'de', child: Text('German')),
                DropdownMenuItem(value: 'hi', child: Text('Hindi'))
              ],
              onChanged: (value){
                print(value);
                setLocale(value);
              }
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              context.formatString(LocaleData.headingText, ['Flutter']),
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
                child: Image.asset('assets/picture7.png')
            ),
            const SizedBox(height: 20,),
            Text(
              LocaleData.bodyText.getString(context),
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  setLocale(String? value){
    if(value == null) return;
    if(value == 'en') {
      flutterLocalization.translate('en');
    }
    else if(value == 'ae') {
      flutterLocalization.translate('ae');
    }
    else if(value == 'zh') {
      flutterLocalization.translate('zh');
    }
    else if(value == 'de') {
      flutterLocalization.translate('de');
    }
    else if(value == 'hi') {
      flutterLocalization.translate('hi');
    }
    else{
      return;
    }
    setState(() {
      currentlyLocalized = value;
    });

  }

}
