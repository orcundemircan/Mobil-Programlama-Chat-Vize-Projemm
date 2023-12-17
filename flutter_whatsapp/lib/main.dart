import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/whatsapp_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GelenGelsinChat',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 0, 0),
        hintColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: WhatsappMain(),
    );
  }
}
