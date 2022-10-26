import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  RegExp passvalid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A_Z])(?=.*\W)");

  bool visible = false;

  bool validatepassword(String pass) {
    // String password = pass.trim();

    if (passvalid.hasMatch(pass)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: !visible,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter password';
                  } else {
                    bool result = validatepassword(value);
                    if (result) {
                      return null;
                    } else {
                      return "Password should contain Upper&Lower case, Number&Symbol";
                    }
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                formKey.currentState!.validate();
              }),
              child: const Text('Validate'),
            ),
          ],
        ),
      ),
    );
  }
}
