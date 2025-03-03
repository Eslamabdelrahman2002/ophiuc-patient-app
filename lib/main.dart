import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_app/Feuatures/splash_screen/presentation/views/splash_view.dart';


void main() async {
  // Ensure that Flutter's engine is initialized before interacting with any plugins
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    // MultiProvider(
      // providers: [
      //   ChangeNotifierProvider(
      //     create: (context) => ThemeProvider(),
      //   ),
      // ],
      // child: const MyApp(),
    // ),
    const MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme:  ThemeData(
         brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.black
        )
      ),

      home: const SplashView(),
    );
  }
}

