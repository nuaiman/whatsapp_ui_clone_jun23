import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/colors.dart';
import 'package:whatsapp_ui_responsive/info.dart';

import '../screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10),
      itemCount: info.length,
      separatorBuilder: (context, index) => const Divider(
        color: dividerColor,
        // indent: 70,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MobileChatScreen(),
            ));
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
          ),
          title: Text(
            info[index]['name'].toString(),
            style: const TextStyle(fontSize: 18),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              info[index]['message'].toString(),
              style: const TextStyle(fontSize: 15),
            ),
          ),
          trailing: Text(
            info[index]['time'].toString(),
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        );
      },
    );
  }
}
