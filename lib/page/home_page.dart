import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          backgroundColor: Colors.pinkAccent,
      ),
          body:
              Column(
                children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.png")),Expanded(child: CustomMenu(title: "Trapesium", imageAsset: "assets/trapesium.png")),
                  ],
                ),
              ),
                  Row(
                    children: [
                      Expanded(child: CustomMenu(title: "Lingkaran", imageAsset: "assets/lingkaran.png")),Expanded(child: CustomMenu(title: "Segitiga", imageAsset: "assets/segitiga.jpg")),
                    ],
                  ),
                ],
    ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 130),
          decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100, width: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: TextStyle(color: Color(0xFFFFFFFF)),),
            ),
        ]

          ),
        );
  }
}

