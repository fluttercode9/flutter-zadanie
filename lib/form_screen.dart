import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/solution_screen.dart';

import 'solution.dart';

class FormScreen extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final solution = Provider.of<Solution>(context, listen: false);
    String passedValues = '';
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zadanie"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                minLines: 5,
                maxLines: 5,
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.input_rounded),
                  hintText: '0,1,2,3 ...',
                  labelText: 'Wprowadź zestaw liczb',
                ),
                onSaved: (String? value) {
                  passedValues = value!;
                },
                validator: (String? value) => solution.validateForm(value),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.5,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      _form.currentState!.save();
                      solution.selectNumber(passedValues);
                      Navigator.of(context).pushNamed(SolutionScreen.route);
                      _form.currentState!.reset();
                    }
                  },
                  icon: const Icon(Icons.search),
                  label: const Text("Wyszukaj"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
