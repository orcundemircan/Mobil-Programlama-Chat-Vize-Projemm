import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/kayit.dart';
import 'package:flutter_whatsapp/whatsapp_main.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GelenGelsinChat",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(75.20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/gelengelsintakımı.jpg',
                width: 320.0,
                height: 320.0,
              ),
              SizedBox(height: 25.70),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25.75),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 75.25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsappMain(),
                    ),
                  );
                },
                child: Text('Giriş Yap'),
              ),
              SizedBox(height: 5.25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: Text('kayıt Ol '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
