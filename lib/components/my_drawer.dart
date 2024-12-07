import 'package:flutter/material.dart';
import 'package:nam_mus/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //logo
          DrawerHeader(
              child: Icon(
            Icons.music_note_rounded,
            size: 60,
            color: Theme.of(context).colorScheme.inversePrimary,
          )),

          //home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home_rounded),
              onTap: () => Navigator.pop(context),
            ),
          ),

          //settings tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: ListTile(
                title: const Text("S E T T I N G S"),
                leading: const Icon(Icons.settings),
                onTap: () {
                  //pop drawer
                  Navigator.pop(context);
                  //Navigate to settings
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
