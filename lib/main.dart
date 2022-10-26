// import 'package:business_class/new.dart';

import 'package:business_class/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreen()
        // home: Scaffold(
        //   backgroundColor: Colors.teal,
        //   body: SafeArea(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         const CircleAvatar(
        //           backgroundImage: AssetImage('assets/girl.jpg'),
        //           radius: 50,
        //         ),
        //         const Text(
        //           'Teejay',
        //           style: TextStyle(
        //             fontSize: 25,
        //             fontFamily: 'Pacifico',
        //             color: Colors.white,
        //           ),
        //         ),
        //         const Text(
        //           'Flutter Developer',
        //           style: TextStyle(
        //             letterSpacing: 5,
        //             fontSize: 20,
        //             fontFamily: 'IndieFlower',
        //             color: Colors.white,
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //           width: 120,
        //           child: Divider(
        //             color: Colors.black,
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: Container(
        //             height: 40,
        //             width: double.infinity,
        //             color: Colors.white,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Row(
        //                 children: const [
        //                   Icon(
        //                     Icons.phone,
        //                     size: 20,
        //                     color: Colors.teal,
        //                   ),
        //                   SizedBox(width: 20),
        //                   Center(
        //                     child: Text(
        //                       '+2347067496610',
        //                       style: TextStyle(
        //                         fontSize: 15,
        //                         color: Colors.teal,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: Container(
        //             height: 40,
        //             width: double.infinity,
        //             color: Colors.white,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Row(
        //                 children: const [
        //                   Icon(
        //                     Icons.email,
        //                     size: 20,
        //                     color: Colors.teal,
        //                   ),
        //                   SizedBox(width: 20),
        //                   Center(
        //                     child: Text(
        //                       'Eagletoffical001@gmail.com',
        //                       style: TextStyle(
        //                         fontSize: 15,
        //                         color: Colors.teal,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: Container(
        //             height: 40,
        //             width: double.infinity,
        //             color: Colors.white,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Row(
        //                 children: [
        //                   const Icon(
        //                     Icons.location_city,
        //                     size: 20,
        //                     color: Colors.teal,
        //                   ),
        //                   const SizedBox(width: 20),
        //                   const Center(
        //                     child: Text(
        //                       'Kwara State',
        //                       style: TextStyle(
        //                         fontSize: 15,
        //                         color: Colors.teal,
        //                       ),
        //                     ),
        //                   ),
        //                   const SizedBox(width: 140),
        //                   TextButton(

        //                     onPressed: () {},
        //                     child: const Icon(
        //                       Icons.copy,
        //                       size: 20,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
