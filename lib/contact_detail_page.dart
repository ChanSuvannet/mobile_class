import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue.shade100,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.blue,
                  child: Text("IW", style: TextStyle(fontSize: 28, color: Colors.white)),
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text("99-999999"),
            subtitle: Text("Mobile"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 16),
                Icon(Icons.message),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
