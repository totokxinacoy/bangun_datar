import 'package:bangun_datar_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
final PersegiController _persegiController=Get.put(PersegiController());
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
          Image.asset("assets/persegi.png",
            height: 100, width: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Persegi", style: TextStyle(color: Color(0xFF070707)),)),
          ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Persegi adalah bangun datar segi empat yang memiliki empat sisi dengan ukuran yang sama panjang. Artinya, persegi berbeda dengan persegi panjang yang ukuran kedua sisinya berbeda. Pun begitu dengan layang-layang dan trapesium."),
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
                          _persegiController.sisi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi",
                          hintText: "Masukkan Sisi",
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
                          _persegiController.hitungLuas();
                        }, child: Text("Hitung Luas")),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.yellowAccent)
                          ),
                          onPressed: (){
                        _persegiController.hitungKeliling();
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
                        Obx(() => Text(_persegiController.hasil.value)),
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
