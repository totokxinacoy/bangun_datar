import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = alas * tinggi * 1/2;
    hasil.value = "Hasil Perhitungan luas dari $alas x $tinggi x 1/2 adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = alas * 3;
    hasil.value= "Hasil Perhitungan keliling dari sisi + sisi + sisi adalah $hitung";
  }
}