import 'package:flutter/material.dart';
import 'package:second_app/core/constants.dart';
import 'package:second_app/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/socials.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            title: Text('Lê Minh Chiến'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('Chien120697@gmail.com'),
            leading: Icon(Icons.email),
          ),
          ListTile(
            title: Text('github.com/Cat1m'),
            leading: Icon(Icons.web),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
