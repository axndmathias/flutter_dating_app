import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  static const String routeName = '/matches';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const MatchesScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
      ),
      body: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text(
            'Home Screen',
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
