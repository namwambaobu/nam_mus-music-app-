import 'package:flutter/material.dart';
import 'package:nam_mus/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "P L A Y L I S T",
            style: TextStyle(
              letterSpacing: 2.0, // Adds spacing between letters
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
