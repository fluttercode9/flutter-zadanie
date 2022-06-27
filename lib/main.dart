import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/solution.dart';
import '/form_screen.dart';
import '/solution_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Solution(),
      child: MaterialApp(
          title: 'Zadanie rekrutacyjne',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo).copyWith(secondary: Colors.amber),
          ),
          home: FormScreen(),
          routes: {
            SolutionScreen.route: (ctx) => SolutionScreen(),
          }),
    );
  }
}
