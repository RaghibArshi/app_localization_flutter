import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndPoint{
  static final clientId = dotenv.env['Client_Id'];
  static String domain = 'https:www.domain.com';
  static String homeData = domain+'/homeData/'+clientId!;
  static String profile = '$domain$clientId/''profile/';
}

String? googleApiKey = dotenv.env['Google_Api_Key'];
