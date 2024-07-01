import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final String title;

  const SettingsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MenuItem(icon: Icons.person, text: 'Personal info'),
            MenuItem(icon: Icons.settings, text: 'Account settings'),
            MenuItem(icon: Icons.security, text: 'App permissions'),
            MenuItem(icon: Icons.support, text: 'Support'),
            MenuItem(icon: Icons.logout, text: 'Log out'),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  MenuItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        // Handle the tap event here
      },
    );
  }
}
