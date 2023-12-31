import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peeps/constants/colors.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/providers/user_provider.dart';
import 'package:peeps/responsive/mobile_screen_layout.dart';
import 'package:peeps/responsive/responsive_layout_screen.dart';
import 'package:peeps/responsive/web_screen_layout.dart';
import 'package:peeps/screens/login_screen.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: secColor,
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return const ResponsiveLayout(
                  mobileScreenLayout: MobileScreenLayout(),
                  webScreenLayout: WebScreenLayout(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error}',
                  ),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: textColor,
                ),
              );
            }
            return const LoginScreen();
          },
        ),
      ),
    );
  }
}
