import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoring_mobile/config/asset_config.dart';
import 'package:monitoring_mobile/config/color_config.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Image(
            image: new AssetImage(AssetConfig.bg),
            width: 600,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Center(
              child: Container(
                height: 670,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConfig.grey),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Image.asset(
                            AssetConfig.back,
                            height: 47,
                            width: 64,
                          ),
                        ),
                        Container(
                          width: 50,
                        ),
                        Text(
                          "INFO",
                          style: TextStyle(fontFamily: 'Iceberg', fontSize: 40),
                        ),
                        Container(
                          width: 120,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Smart garden adalah aplikasi sistem kendali dan monitoring penyiraman/pengawasan tanaman yang memanfaatkan teknologi cerdas. Komponen yang umumnya digunakan dalam smart garden antara Android Studio, Soil Moisture Sensor, Sensor Ds18b20 Waterproof, Mikrokontroller NodeMCU Esp32.",
                        style: TextStyle(fontFamily: 'Iceberg', fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sistematis kerjanya menggunakan sistem pembacaan yang aktif melalui database yang telah diatur.",
                        style: TextStyle(fontFamily: 'Iceberg', fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "(AUTO) Jika pembacaan sensor sensor dibawah 70% maka pompa secara otomatis aktif lalu melakukan penyiraman.",
                        style: TextStyle(fontFamily: 'Iceberg', fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "(MANUAL) Jika pengguna ingin mengaktifkan tanpa pembacaan sensor, maka boleh secara langsung menekan tombol ON/OFF.",
                        style: TextStyle(fontFamily: 'Iceberg', fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: new AssetImage(AssetConfig.cp),
                            width: 40,
                            height: 40,
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "42620050 & 42620060 - TMJ ANG 20",
                                  style: TextStyle(
                                      fontFamily: 'Iceberg', fontSize: 16),
                                ),
                                Text(
                                  "Dibuat Tahun 2024",
                                  style: TextStyle(
                                      fontFamily: 'Iceberg', fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
