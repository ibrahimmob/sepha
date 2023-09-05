import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/seoha/sophan_allah.dart';
import 'package:page_transition/page_transition.dart';

class sepha extends StatelessWidget {
  const sepha({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
        duration:4000 ,
        splash: Lottie.asset("images/animation_ll41bhsz.json"),
        nextScreen: allah (),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.white);
  }
}
