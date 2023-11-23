import 'package:bangun_datar_c/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController=Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Persegi",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/lingkaran.png",
              height: 100, width: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Lingkaran", style: TextStyle(color: Color(0xFF070707)),)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
              child: Text(
                  " lingkaran adalah bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang. Titik tetap pada sebuah bangun datar lingkaran ini disebut juga dengan titik asal atau titik pusat lingkaran."),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        onChanged: (String value){
                          _lingkaranController.jari = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari-jari",
                          hintText: "Masukkan jari-jari",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)
                            ),
                            onPressed: (){
                              _lingkaranController.hitungLuas();
                            }, child: Text("Hitung Luas")),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.yellowAccent)
                          ),
                          onPressed: (){
                            _lingkaranController.hitungKeliling();
                          }, child: Text("Hitung Keliling")),
                    ],
                  ),
                ],

              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hasil", style: TextStyle(fontSize: 30)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Text(_lingkaranController.hasil.value)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("==============="),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Thank You!"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}