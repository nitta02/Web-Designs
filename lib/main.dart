import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/firebase_options.dart';
import 'package:social_media_app/view/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Sozo());
}

class Sozo extends StatelessWidget {
  const Sozo({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Sozo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // scaffoldBackgroundColor: Colors.blue.withOpacity(0.5),
              // fontFamily: 'Raleway',
              ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
