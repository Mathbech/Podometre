import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import 'dart:async';
import '../function/ResetStepDaily.dart';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Stream<StepCount> _stepCountStream;
  String _steps = '0';

  @override
  void initState() {
    super.initState();
    initPlatformState();
    scheduleDailyReset(resetSteps);
  }

  void resetSteps() {
    setState(() {
      _steps = '0';
    });
    scheduleDailyReset(resetSteps);
  }

  

  void onStepCount(StepCount event) {
    if (kDebugMode) {
      print(event);
    }

    setState(() {
      _steps = event.steps.toString();
    });
  }

  void onStepCountError(error) {
    if (kDebugMode) {
      print('onStepCountError: $error');
    }
    setState(() {
      _steps = 'Step Count not available';
    });
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Podomètre'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Nombre de pas',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              _steps,
              style: const TextStyle(fontSize: 60),
            ),
            const Divider(
              height: 100,
              thickness: 0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
