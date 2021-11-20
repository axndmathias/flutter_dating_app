import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text('Home Screen'),
      ),
    );
  }
}
