import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:monitoring_mobile/model/tanaman.dart';

class TanamanController extends GetxController {
  Rx<Tanaman> tanamanData = Tanaman().obs;
  late DatabaseReference _databaseReference;

  @override
  void onInit() {
    super.onInit();

    _databaseReference = FirebaseDatabase.instance.ref('Sensor');

    _databaseReference.onValue.listen((event) {
      if (event.snapshot.value != null) {
        final data = Map<String, dynamic>.from(
            event.snapshot.value! as Map<Object?, Object?>);
        print("Raw data from Firebase: $data");
        tanamanData.value = Tanaman.fromJson(data);
        var sensor = Tanaman.fromJson(data);
        tanamanData.value = sensor;
        print("Sensor data: ${tanamanData.value}");
      } else {
        tanamanData.value = Tanaman(
          lampu: 0,
          manual: 0,
          moisture: 0,
          suhu: 0.0,
        );
      }
    });
  }

  void updateManual(int value) {
    _databaseReference.update({"Manual": value}).then((_) {
      Get.snackbar(
        'Success',
        'Successfully sent $value to Firebase',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }).catchError((error) {
      Get.snackbar(
        'Error',
        'Failed to send $value to Firebase: $error',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    });
    ;
  }

  void updateLampu(int value) {
    _databaseReference.update({"Lampu": value}).then((_) {
      Get.snackbar(
        'Success',
        'Successfully sent $value to Firebase',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }).catchError((error) {
      Get.snackbar(
        'Error',
        'Failed to send $value to Firebase: $error',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    });
    ;
  }
}
