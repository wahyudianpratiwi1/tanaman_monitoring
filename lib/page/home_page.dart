import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_mobile/config/asset_config.dart';
import 'package:monitoring_mobile/config/color_config.dart';
import 'package:monitoring_mobile/controller/tanaman_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TanamanController tanamanController = Get.put(TanamanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: constraints.maxHeight,
        ),
        child: Container(
          child: Stack(children: [
            Image(
              image: new AssetImage(AssetConfig.bg),
              width: 600,
              fit: BoxFit.fill,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/awal');
              },
              child: Image.asset(
                AssetConfig.back,
                height: 47,
                width: 64,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'SMART GARDEN',
                      style: TextStyle(
                          fontFamily: 'Kavoon',
                          fontSize: 24,
                          color: ColorConfig.green),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'PILIH MODE PENGGUNAAN',
                      style: TextStyle(
                          fontFamily: 'Iceberg',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                      width: 100,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConfig.black),
                      child: const Center(
                        child: Text(
                          'Auto',
                          style: TextStyle(
                              fontFamily: 'Iceberg',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      )),
                  Row(
                    children: [
                      Container(
                          width: 100,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: const Center(
                            child: Text(
                              'Manual',
                              style: TextStyle(
                                  fontFamily: 'Iceberg',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Obx((() {
                      return Transform.scale(
                        scale: 2,
                        child: SwitchListTile(
                          value:
                              tanamanController.tanamanData.value.manual == 1,
                          onChanged: (bool value) {
                            int lampuValue = value ? 1 : 0;
                            tanamanController.updateManual(lampuValue);
                          },
                          activeColor: Colors.green,
                          inactiveThumbColor:
                              const Color.fromARGB(255, 238, 132, 125),
                          inactiveTrackColor: Colors.red,
                        ),
                      );
                    })),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Kelembaban Tanah',
                        style: TextStyle(
                            fontFamily: 'Iceberg',
                            fontSize: 32,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Sensor Soil Moisture',
                      style: TextStyle(
                          fontFamily: 'Timmana',
                          fontSize: 20,
                          color: ColorConfig.red),
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorConfig.red,
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          height: 49,
                          width: 161,
                          child: Text(
                            "${tanamanController.tanamanData.value.moisture}%",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Timmana',
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Suhu/Temperatur Tanah',
                        style: TextStyle(
                            fontFamily: 'Iceberg',
                            fontSize: 32,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Sensor DS18B20 Waterproof',
                      style: TextStyle(
                          fontFamily: 'Timmana',
                          fontSize: 20,
                          color: ColorConfig.blue),
                    ),
                  ),
                  Obx(
                    () => Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorConfig.blue,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 2)),
                        height: 49,
                        width: 161,
                        child: Text(
                          "${tanamanController.tanamanData.value.suhu}°C",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Timmana',
                              fontSize: 40,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Lampu/LED',
                        style: TextStyle(
                            fontFamily: 'Iceberg',
                            fontSize: 32,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170),
                        child: Obx((() {
                          return Transform.scale(
                            scale: 2,
                            child: SwitchListTile(
                              value:
                                  tanamanController.tanamanData.value.lampu ==
                                      1,
                              onChanged: (bool value) {
                                int lampuValue = value ? 1 : 0;
                                tanamanController.updateLampu(lampuValue);
                              },
                              activeColor: Colors.green,
                              inactiveThumbColor:
                                  const Color.fromARGB(255, 238, 132, 125),
                              inactiveTrackColor: Colors.red,
                            ),
                          );
                        })),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetConfig.icon_book,
                          height: 43,
                          width: 43,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/info');
                          },
                          child: const Text(
                            'Manual Book',
                            style: TextStyle(
                                fontFamily: 'Iceberg',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ));
    })));
  }
}
