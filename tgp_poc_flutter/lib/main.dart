import 'dart:io';
import 'color_schemes.g.dart';
import 'package:flutter/material.dart';
import './components/inputField.dart';
import './components/snack_bar/snackBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'IO Onboarding';

    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: SingleChildScrollView(
              child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: const MyCustomForm(),
          )),
        ));
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InputTextFormField(
              labelText: 'First Name',
              hintText: 'Enter your First name',
              isPassword: false,
              fieldValidator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your First name';
                }
                if (value.isNotEmpty && value.length < 5) {
                  return 'First Name should be more then 5 chars';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InputTextFormField(
              labelText: 'Last Name',
              hintText: 'Last Name',
              isPassword: false,
              fieldValidator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Last name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InputTextFormField(
              labelText: 'Mobile',
              hintText: 'Enter your Mobile',
              isPassword: false,
              fieldValidator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Mobile';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InputTextFormField(
              labelText: 'GSTIN',
              hintText: 'Enter your GSTIN',
              isPassword: false,
              fieldValidator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter GSTIN number';
                }
                String pattern =
                    '^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}';
                RegExp regExp = RegExp(pattern);
                if (!regExp.hasMatch(value)) {
                  return 'Please enter valid GSTIN number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              obscureText: true,
              controller: _password,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              obscureText: true,
              controller: _confirmPassword,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Confirm Password';
                }
                if (value != _password.value.text) {
                  return 'Password not matching';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  CustomWidgets.buildErrorSnackbar(context, 'Please provide all mandatory fields !!!', 0xFFE30000);
                }

                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                 CustomWidgets.buildErrorSnackbar(context, 'Saving Data', 0xFF1D2989);
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
