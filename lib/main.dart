import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/home_controller/home_controller.dart';
import 'package:weather_app/view/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeController(context),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff76EAFD),
          appBarTheme: const AppBarTheme(
            color: Color(0xff76EAFD),
            surfaceTintColor: Color(0xff96DDFB),
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
