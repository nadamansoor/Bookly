import 'package:bookly/core/utils/images.dart';
import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:bookly/features/splash/presentation/views/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NaviToHome();
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
          AnimatedText(slidingAnimation: slidingAnimation),                 
      ],
    );
  }

  //siding animation 
    void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    
    animationController.forward();
  }
    // ignore: non_constant_identifier_names
    void NaviToHome() {
    Future.delayed(
      const Duration(seconds: 2), (){
        Get.to(()=> HomeView(), transition: Transition.fadeIn, duration: const Duration(seconds: 1));
      }
    );
  }
}