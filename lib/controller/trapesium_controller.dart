import 'package:get/get.dart';

class TrapesiumController extends GetxController{
  int a = 0;
  int b = 0;
  int miring = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = (a+b)/2 * tinggi;
    hasil.value = "Hasil Perhitungan luas dari ($a+$b)/2 x $tinggi adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = a + b + miring + tinggi;
    hasil.value= "Hasil Perhitungan keliling dari $a + $b + $miring + $tinggi adalah $hitung";
  }
}
