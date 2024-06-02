import 'package:flutter/material.dart';

import 'package:monitoring_mobile/config/asset_config.dart';
import 'package:monitoring_mobile/config/color_config.dart';

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
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
    // .whenComplete(() => Navigator.pushNamed(context, '/home'));
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
                  Center(
                    child: Image(
                      image: new AssetImage(AssetConfig.bg),
                      width: 600,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SMART GARDEN',
                          style: TextStyle(
                              fontFamily: 'Kavoon',
                              fontSize: 40,
                              color: ColorConfig.green),
                        ),
                        Image(
                          image: new AssetImage(AssetConfig.logo),
                          width: 156,
                          height: 245,
                          fit: BoxFit.fill,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(128, 58)),
                                shape: MaterialStatePropertyAll<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        ColorConfig.button)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Text(
                              'Mulai',
                              style: TextStyle(
                                  fontFamily: 'SpicyRice', fontSize: 24),
                            )),
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
