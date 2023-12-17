import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/calls_page.dart';
import 'package:flutter_whatsapp/screens/exit_page.dart';
import 'package:flutter_whatsapp/screens/chats_page.dart';
import 'package:flutter_whatsapp/screens/status_page.dart';

class WhatsappMain extends StatefulWidget {
  const WhatsappMain({super.key});

  @override
  State<WhatsappMain> createState() => _WhatsappMainState();
}

class _WhatsappMainState extends State<WhatsappMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showMessage = true;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
    _tabController.addListener(() {
      _showMessage = _tabController.index != 0;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Image.asset(
          'assets/images/gelengelsintakımı4.png',
          width: 195.95,
          height: 195.95,
        )),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.988),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "Exit",
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Profile",
            ),
            Tab(
              text: "Calls",
            ),
          ],
          labelColor: Colors.white, // Set the selected tab text color to white
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: _showMessage
          ? FloatingActionButton(
              child: Icon(Icons.message),
              onPressed: () {},
            )
          : null,
    );
  }
}
