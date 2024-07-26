import 'package:flutter/material.dart';
import 'package:monitoring_mobile/config/asset_config.dart';
import 'package:monitoring_mobile/config/color_config.dart';

class AwalPage extends StatefulWidget {
  const AwalPage({super.key});

  @override
  State<AwalPage> createState() => _AwalPageState();
}

class _AwalPageState extends State<AwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                  fontFamily: 'Kavoon', fontSize: 40, color: ColorConfig.green),
            ),
            Image(
              image: new AssetImage(AssetConfig.logo),
              width: 156,
              height: 245,
              fit: BoxFit.fill,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(128, 58)),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent)),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Mulai',
                  style: TextStyle(
                      fontFamily: 'SpicyRice',
                      fontSize: 24,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    ]));
  }
}
