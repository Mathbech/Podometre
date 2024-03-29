import 'package:bts_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  static const String routeName = '/settings';

  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Paramètres'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
      body: Center(
        child: CustomButton(text: 'Définir l\'objectif', onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(

          const SnackBar(content: Text('Objectif défini avec succès !'))
          );
        }),
      ),
    );
  }
}
