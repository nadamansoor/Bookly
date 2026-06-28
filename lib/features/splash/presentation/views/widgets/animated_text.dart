
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text('Bringing stories closer to you',
          style: AppStyles.textbold18,         
          textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}