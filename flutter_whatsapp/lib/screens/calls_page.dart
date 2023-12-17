import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
      ),
      body: CallHistory(),
    );
  }
}

class CallHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildCallRecord(
          "assets/images/Ben.jpeg",
          "Orçun",
          "January 10, 10:30 AM",
          true,
        ),
        buildCallRecord(
          "assets/images/omer.jpg",
          "Ömer",
          "January 9, 3:45 PM",
          false,
        ),
        buildCallRecord(
          "assets/images/bahri.jpeg",
          "Bahri",
          "January 8, 6:20 PM",
          false,
        ),
        buildCallRecord(
          "assets/images/Ben.jpeg",
          "Orçun",
          "January 8, 14:30 PM",
          true,
        ),
        buildCallRecord(
          "assets/images/bahri.jpeg",
          "Bahri",
          "January 8, 18:10 PM",
          true,
        ),
        buildCallRecord(
          "assets/images/omer.jpg",
          "Ömer",
          "January 8, 22:29 PM",
          false,
        ),
        buildCallRecord(
          "assets/images/Ben.jpeg",
          "Orçun",
          "January 7, 23:56 PM",
          true,
        ),
        buildCallRecord(
          "assets/images/bahri.jpeg",
          "Bahri",
          "January 7, 22:20 PM",
          true,
        ),
        buildCallRecord(
          "assets/images/bahri.jpeg",
          "Bahri",
          "January 7, 6:20 PM",
          true,
        ),
      ],
    );
  }

  Widget buildCallRecord(
      String imagePath, String name, String time, bool isMissed) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          Icon(
            isMissed ? Icons.call_missed : Icons.call_received,
            color: isMissed ? Colors.red : Colors.green,
          ),
          SizedBox(width: 5),
          Text(time),
        ],
      ),
      trailing: Icon(Icons.call),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CallsPage(),
  ));
}
