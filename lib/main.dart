// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors, sort_child_properties_last
import 'package:assignment_app/screen/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );

  await SystemChrome.setSystemUIChangeCallback(
    // ignore: non_constant_identifier_names
    (SystemUiOverlayAreVisible) async {
      // ignore: avoid_print
      print('CHANGED: $SystemUiOverlayAreVisible');
    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Date Range Picker',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 160, 75, 89),
      ),
      home: const SignInScreen(),
    );
  }
}
