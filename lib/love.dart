import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LoveEmoji extends StatefulWidget {
  const LoveEmoji({Key? key}) : super(key: key);

  @override
  State<LoveEmoji> createState() => _LoveEmojiState();
}

class _LoveEmojiState extends State<LoveEmoji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LikeButton(
          size: 80,
          likeCount: 5,
          countPostion: CountPostion.top,
          bubblesColor: const BubblesColor(
              dotPrimaryColor: Colors.blue, dotSecondaryColor: Colors.red),
          circleColor:
              const CircleColor(start: Colors.black, end: Colors.white),
          likeBuilder: (isLiked) {
            return Icon(
              Icons.heart_broken,
              color: isLiked ? Colors.blue : Colors.red,
              size: 80,
            );
          },
        ),
      ),
    );
  }
}
