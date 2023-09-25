import 'package:bookly_app/comsts.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationOne;
  late Animation<Offset> animationTwo;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    Future.delayed(const Duration(seconds: 2), () {
      navigateToHomView();
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: animationTwo,
            builder: (context, _) {
              return SlideTransition(
                  position: animationOne, child: Image.asset(AssetsData.klogo));
            }),
        const SizedBox(
          height: 10,
        ),
        AnimatedBuilder(
            animation: animationOne,
            builder: (context, _) {
              return SlideTransition(
                position: animationTwo,
                child: const Text(
                  'Read Free Books',
                  style: TextStyle(fontSize: 16, color: Colors.orange),
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    const beginOne = Offset(0, 3);
    const beginTwo = Offset(0, -10);
    const end = Offset.zero;
    animationOne =
        Tween<Offset>(begin: beginOne, end: end).animate(animationController);
    animationTwo =
        Tween<Offset>(begin: beginTwo, end: end).animate(animationController);
    animationController.forward();
  }

  void navigateToHomView() {
    Get.to(() => const HomeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
        curve: Curves.easeIn);
  }
}
