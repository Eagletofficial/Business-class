// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoveCalculator extends StatefulWidget {
  const LoveCalculator({Key? key}) : super(key: key);

  @override
  State<LoveCalculator> createState() => _LoveCalculatorState();
}

final GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _LoveCalculatorState extends State<LoveCalculator> {
  void validation() {
    final FormState? form = formkey.currentState;
    if (form!.validate()) {}
  }

  bool visible = false;
  bool passwordEightCharacter = false;
  bool passwordOneNumber = false;

  onPasswordChange(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      passwordEightCharacter = false;
      if (password.length >= 8) passwordEightCharacter = true;
      passwordOneNumber = false;

      if (numericRegex.hasMatch(password)) passwordOneNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value == "") {}
                  return ('input username');
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  hintText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                onChanged: (password) => onPasswordChange(password),
                obscureText: !visible,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == '!') {}

                  return ('input password');
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: passwordEightCharacter
                          ? Colors.green
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      border: passwordEightCharacter
                          ? Border.all(color: Colors.transparent)
                          : Border.all(
                              color: Colors.grey.shade900,
                            ),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Contain at least 8 characters'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color:
                          passwordOneNumber ? Colors.green : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      border: passwordOneNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade900),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Contain at least 1 number'),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  validation();
                });
              }),
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}
