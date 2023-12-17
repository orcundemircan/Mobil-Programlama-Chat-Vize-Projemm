import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/login.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => login(),
            ),
          );
        },
        child: Text('Giriş Ekranına Geri Dön\'e Git'), // Buton metni
      ),
    );
  }
}
