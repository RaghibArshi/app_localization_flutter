
import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALE = [
  MapLocale('en', LocaleData.EN),
  MapLocale('ae', LocaleData.AE),
  MapLocale('zh', LocaleData.ZH),
  MapLocale('de', LocaleData.DE),
  MapLocale('hi', LocaleData.HI),
];

mixin LocaleData{

  static const String appBarTitle = 'title';
  static const String headingText = 'Header Text';
  static const String bodyText = 'Body Text';

  static const Map<String, dynamic> EN = {
    appBarTitle: 'App Localization',
    headingText: 'Mobile Application %a',
    bodyText: 'This is demo application on localization',
  };

  static const Map<String, dynamic> AE = {
    appBarTitle: 'توطين التطبيق',
    headingText: '%a تطبيق الهاتف المحمول',
    bodyText: 'هذا هو التطبيق التجريبي على الترجمة',
  };

  static const Map<String, dynamic> ZH = {
    appBarTitle: '应用程序本地化',
    headingText: '移动应用程序 %a',
    bodyText: '这是本地化的演示应用程序',
  };

  static const Map<String, dynamic> DE = {
    appBarTitle: 'App-Lokalisierung',
    headingText: 'Mobile Applikation %a',
    bodyText: 'Dies ist eine Demoanwendung zur Lokalisierung',
  };

  static const Map<String, dynamic> HI = {
    appBarTitle: 'ऐप स्थानीयकरण',
    headingText: 'मोबाइल एप्लिकेशन %a',
    bodyText: 'यह स्थानीयकरण पर डेमो एप्लिकेशन है',
  };

}