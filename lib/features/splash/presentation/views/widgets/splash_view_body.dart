import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/core/utils/images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        Image.asset(   
            width: 150,
            height: 150,      
          ImagesData.logo),
          SizedBox(
            height: 6,
          ),
          Text('Bringing stories closer to you',
          style: AppStyles.textbold18,         
          textAlign: TextAlign.center,
          ),
          
          
      ],
    );
  }
}