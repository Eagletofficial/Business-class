// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Lovecalculator extends StatefulWidget {
  const Lovecalculator({Key? key}) : super(key: key);

  @override
  State<Lovecalculator> createState() => _LovecalculatorState();
}

class _LovecalculatorState extends State<Lovecalculator> {
  var pre = 100;
  Random ram = Random();
  int? a;

  validator() {
    a = ram.nextInt(pre);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController txt1 = TextEditingController();
    TextEditingController txt2 = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('assets/love.jpg'),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Your Love Power',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: txt1,
                decoration: InputDecoration(
                  labelText: 'Male',
                  labelStyle: TextStyle(
                    fontFamily: 'Merriweather',
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w700,
                  ),
                  // hintText: 'Male',
                  // hintStyle: TextStyle(
                  //   fontFamily: 'Satisfy',
                  //   color: Colors.redAccent,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Icon(
              Icons.add,
              size: 40,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: txt2,
                decoration: InputDecoration(
                  labelText: 'Female',
                  labelStyle: TextStyle(
                    fontFamily: 'Merriweather',
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w700,
                  ),
                  // hintText: 'Female',
                  // hintStyle: TextStyle(
                  //   fontFamily: 'Satisfy',
                  //   color: Colors.redAccent,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  if (txt1.text.isEmpty || txt2.text.isEmpty) {
                  } else {
                    setState(() {
                      validator();
                    });
                  }
                });
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.pink,
                    width: 4,
                  ),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    'LOVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your Love is $a',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Merriweather'),
            ),
          ],
        ),
      ),
    );
  }
}
