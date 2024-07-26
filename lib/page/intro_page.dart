import 'package:flutter/material.dart';

import 'package:monitoring_mobile/config/asset_config.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller
        .forward()
        .whenComplete(() => Navigator.pushNamed(context, '/awal'));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Opacity(
                  opacity: _animation.value,
                  child: Container(
                      child: Stack(children: [
                    // Center(
                    //   child: Image(
                    //     image: new AssetImage(AssetConfig.bg),
                    //     width: 600,
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Image(
                            image: new AssetImage(AssetConfig.logo),
                            width: 156,
                            height: 245,
                            fit: BoxFit.fill,
                          )
                        ]))
                  ])));
            }));
  }
}
