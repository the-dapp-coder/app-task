import 'package:api_task/promilo/ui/promilo_auth_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 248, 250),
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 245, 248, 250),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 143, 157, 247)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  color: Colors.blue.shade700,
                  width: 2.5,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const PromiloAuthPage(),
    );
  }
}
