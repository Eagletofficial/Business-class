import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  const Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

bool checked = false;
bool click = false;
bool tap = false;
bool choose = false;
bool press = false;

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checked Box'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Theme(
                  data: Theme.of(context)
                      .copyWith(unselectedWidgetColor: Colors.red),
                  child: Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.green,
                    value: checked,
                    onChanged: ((value) {
                      setState(() {
                        checked = value!;
                      });
                    }),
                  ),
                ),
                const Text(
                  'Are you +18? if yes check the box',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Theme(
                  data: Theme.of(context)
                      .copyWith(unselectedWidgetColor: Colors.brown),
                  child: Checkbox(
                    checkColor: Colors.black,
                    activeColor: const Color.fromARGB(255, 175, 76, 76),
                    value: click,
                    onChanged: ((value) {
                      setState(() {
                        click = value!;
                      });
                    }),
                  ),
                ),
                const Text(
                  'If you are eligible to vote, check the box',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      unselectedWidgetColor:
                          const Color.fromARGB(255, 244, 54, 203)),
                  child: Checkbox(
                    checkColor: Colors.black,
                    activeColor: const Color.fromARGB(255, 76, 86, 175),
                    value: tap,
                    onChanged: ((value) {
                      setState(() {
                        tap = value!;
                      });
                    }),
                  ),
                ),
                const Text(
                  'If you are a Nigerian, check the box',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Theme(
                  data: Theme.of(context)
                      .copyWith(unselectedWidgetColor: Colors.cyan),
                  child: Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.lime,
                    value: choose,
                    onChanged: ((value) {
                      setState(() {
                        choose = value!;
                      });
                    }),
                  ),
                ),
                const Text(
                  'If you are a unilorite, check the box',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
            CheckboxListTile(
              title: const Text(
                'Are you a Male, check the box',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              secondary: const Icon(Icons.person),
              controlAffinity: ListTileControlAffinity.leading,
              value: press,
              onChanged: ((value) {
                setState(() {
                  press = value!;
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
