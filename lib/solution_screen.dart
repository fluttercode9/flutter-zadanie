import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'solution.dart';

class SolutionScreen extends StatelessWidget {
  static const route = "/solution";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wynik"),
      ),
      body: Center(
        child: Text(
          Provider.of<Solution>(context, listen: false).chosenNumber,
          style: const TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
          
        ),
      ),
    );
  }
}
