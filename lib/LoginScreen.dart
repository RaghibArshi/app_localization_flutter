import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:youtube_project/data/endpoints.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD6E2EA),
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6C3428),
        centerTitle: true,
      ),
      body: Center(
        child: Text(EndPoint.homeData),
      ),
    );
  }

  secureData()async{
    const storage = FlutterSecureStorage();
    await storage.write(key: 'key', value: googleApiKey);
    var secureGoogleKay = await storage.read(key: 'key');
    print('Google_Secure_Api_Key:- $secureGoogleKay');
  }

}
