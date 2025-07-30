import 'dart:async';
import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  int seconds = 0;
  Timer? timer;

  String _secondToText() => seconds == 1 ? 'Second' : 'Seconds';

  void _startTimer() {
    if (timer != null && timer!.isActive) return; // Prevent multiple timers
    timer = Timer.periodic(const Duration(milliseconds: 1000), _onTick);
  }

  void _onTick(Timer timer) {
    setState(() {
      seconds++;
    });
  }

  void _pauseTimer() {
    timer?.cancel(); // Just stop it without resetting the counter
  }

  void _stopTimer() {
    timer?.cancel();
    setState(() {
      seconds = 0;
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$seconds ${_secondToText()}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            controlpanel(),
          ],
        ),
      ),
    );
  }

  Row controlpanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _startTimer,
          child: const Text('Start'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: _pauseTimer,
          child: const Text('Pause'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: _stopTimer,
          child: const Text('Stop'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ],
    );
  }
}
