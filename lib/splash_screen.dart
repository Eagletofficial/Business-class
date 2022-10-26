import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('SPLASH SCREEN'),
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.menu),
            ),
            title: const Text('SPLASH SCREEN'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
