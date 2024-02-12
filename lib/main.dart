import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/forgetPass_controller.dart';
import 'package:social_media_app/controller/post_controller.dart';
import 'package:social_media_app/controller/signIn_controller.dart';
import 'package:social_media_app/controller/signup_controller.dart';
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
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => SignUpController(),
            ),
            ChangeNotifierProvider(
              create: (context) => SignInController(),
            ),
            ChangeNotifierProvider(
              create: (context) => ForgetPasswordController(),
            ),
            ChangeNotifierProvider(
              create: (context) => PostController(),
            ),
          ],
          child: MaterialApp(
            title: 'Sozo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                // scaffoldBackgroundColor: Colors.blue.withOpacity(0.5),
                // fontFamily: 'Raleway',
                ),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
