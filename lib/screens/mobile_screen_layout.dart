import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/colors.dart';
import 'package:whatsapp_ui_responsive/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: appBarColor,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
        ),
        body: const ContactsList(),
      ),
    );
  }
}
