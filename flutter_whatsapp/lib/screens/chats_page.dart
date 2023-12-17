import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Set the app bar to null
      body: Container(
        color: Colors.grey[200], // Set the background color to light gray
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              buildRow("assets/images/ben.jpeg", "Orçun",
                  "Beyler Nerde Kaldınız?"),
              buildRow("assets/images/bahri.jpeg", "Bahri",
               "Yer tutunnn "),
              buildRow("assets/images/omer.jpg", "Ömer",
                  "Ders Başladı mı ?"),
              buildRow("assets/images/ben.jpeg", "Gelen Gelsin",
              "Başlamadı?"),
               buildRow("assets/images/omer.jpg", "Ömer", 
               "Metrobüsteyim "),
              buildRow("assets/images/bahri.jpeg", "Bahri",
                  "Geliyorum "),
              buildRow("assets/images/ben.jpeg", "Gelen Gelsin",
              "Proje Teslim ne zamandı?"),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String imagePath, String name, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imagePath,
                  width: 100,
                  height: 100, // Set a fixed height for all images
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Text(text),
            ],
          ),
        ],
      ),
    );
  }
}
