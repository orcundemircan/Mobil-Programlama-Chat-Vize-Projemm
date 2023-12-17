import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/login.dart';

class kayit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
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
              TextField(
                decoration: InputDecoration(
                  labelText: 'Ad',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25.70),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Soyad',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25.70),
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-posta',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25.70),
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
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
