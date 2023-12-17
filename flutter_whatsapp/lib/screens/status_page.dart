import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Set the app bar to null
      body: Container(
        color: Colors.grey[200], // Set the background color to light gray
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            buildProfile(
              "assets/images/ben.jpeg",
              "Orçun",
              "GelenGelsinApp Developer Ceo",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfile(String imagePath, String name, String status) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Adjust the border radius as needed
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Text(
                status,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              // Additional content on the right side
              Text(
                "Genel Amaç.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Merhaba Ben Orçun istinye Üniversitesi öğrencisiyim bu proje benim vize projem, ve kurduğumuz takımla chat programı tasarladık. "
                "Projeyi tamamlarken takım olarak çok eğlendik nice projelere.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
