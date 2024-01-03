import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peeps/constants/colors.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //? Web App
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDH-rh4cbO4GNQcZsgj7V0v6YIq94oyW9c",
        appId: "1:1095012437085:web:5b0f787856e2fa7a3691b4",
        messagingSenderId: "1095012437085",
        projectId: "peeps-676de",
        storageBucket: "peeps-676de.appspot.com",
      ),
    );
  } else {
    //?Mobile App
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: secColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),

      home: SignupScreen(),
    );
  }
}
