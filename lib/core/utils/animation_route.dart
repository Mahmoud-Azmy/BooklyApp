import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final Widget page;
  SlideRight({required this.page})
      : super(
            pageBuilder: (context, animation, animationtwo) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              // const begin = 0.0;
              // const end = 1.0;
              const begin = Offset(1, 0);
              const end = Offset.zero;
              var tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);
              // var curve = Curves.linear;
              // var curveAnimation =
              //     CurvedAnimation(curve: curve, parent: animation);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
              // return Align(
              //   child: SizeTransition(
              //     sizeFactor: animation,
              //     child: child,
              //   ),
              // );
            },
            transitionDuration: const Duration(seconds: 1));
}
