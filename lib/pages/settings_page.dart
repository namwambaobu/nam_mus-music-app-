import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nam_mus/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("S E T T I N G S")),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Dark Mode",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            // Use Consumer for dynamic updates
            Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return CupertinoSwitch(
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    themeProvider.toggleTheme(); // Call to toggle the theme
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
