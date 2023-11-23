import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int jari = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = 22/7 * jari * jari;
    hasil.value = "Hasil Perhitungan luas dari 22/7 x $jari x $jari adalah $hitung";
  }

  void hitungKeliling(){
    double hitung = 2 * 22/7 * jari;
    hasil.value= "Hasil Perhitungan keliling dari 2 x 22/7 x $jari adalah $hitung";
  }
}