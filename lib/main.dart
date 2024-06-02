import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monitoring_mobile/config/color_config.dart';
import 'package:monitoring_mobile/firebase_options.dart';
import 'package:monitoring_mobile/page/home_page.dart';
import 'package:monitoring_mobile/page/info_page.dart';
import 'package:monitoring_mobile/page/intro_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Intro(),
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          primaryColor: ColorConfig.primary,
          colorScheme: const ColorScheme.light(
              primary: ColorConfig.primary, secondary: ColorConfig.secondary)),
      routes: {
        '/home': (context) => const Home(),
        '/info': (context) => const InfoPage()
      },
    );
  }
}
