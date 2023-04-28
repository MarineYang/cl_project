import 'package:flutter/material.dart';
import 'package:pomodoro_app/screen/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme:ColorScheme.fromSwatch(backgroundColor: const Color(0XFFE7626C)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0x0ff232b5)
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
