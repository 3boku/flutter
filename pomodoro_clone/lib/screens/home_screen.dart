import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 1500;
  int totalSeconds_15 = 900;
  int totalSeconds_20 = 1200;
  int totalSeconds_25 = 1500;
  int totalSeconds_30 = 1800;
  int totalSeconds_35 = 2100;
  int round = 0;
  int goal = 0;
  int totalSeconds = 0;
  int rest = 300;
  bool isRunning = false;
  bool isRST = true;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        round += 1;
        if (round == 4) {
          goal += 1;
          round = 0;
        }
        isRunning = false;
        isRST ? isRest : isRunning = false;
      });
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void isRest(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        isRunning = false;
      });
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      isRest,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void on15Pressed() {
    setState(() {
      isRunning = false;
      totalSeconds = totalSeconds_15;
    });
  }

  void on20Pressed() {
    setState(() {
      isRunning = false;
      totalSeconds = totalSeconds_20;
    });
  }

  void on25Pressed() {
    setState(() {
      isRunning = false;
      totalSeconds = totalSeconds_25;
    });
  }

  void on30Pressed() {
    setState(() {
      isRunning = false;
      totalSeconds = totalSeconds_30;
    });
  }

  void on35Pressed() {
    setState(() {
      isRunning = false;
      totalSeconds = totalSeconds_35;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResumePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMinutes;
    });
  }

  String formatBehind(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(5, 7);
  }

  String formatForward(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 30,
                height: 150,
              ),
              Text(
                'POMOTIMER',
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 270,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: 130,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 45,
                    horizontal: 30,
                  ),
                  child: Text(
                    formatForward(totalSeconds),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                width: 31,
              ),
              Column(
                children: const [
                  Text(
                    '·',
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '·',
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                width: 31,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: 130,
                height: 150,
                padding: const EdgeInsets.symmetric(
                  vertical: 45,
                  horizontal: 30,
                ),
                child: Text(
                  formatBehind(totalSeconds),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: on15Pressed,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(70, 50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "15",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: on20Pressed,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(70, 50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "20",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: on25Pressed,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(70, 50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "25",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: on30Pressed,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(70, 50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "30",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: on35Pressed,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(70, 50),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "35",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          IconButton(
            iconSize: 100,
            onPressed: isRunning ? onPausePressed : onStartPressed,
            icon: Icon(isRunning
                ? Icons.pause_circle_outline
                : Icons.play_circle_outline),
          ),
          IconButton(
            iconSize: 40,
            color: Theme.of(context).cardColor,
            onPressed: onResumePressed,
            icon: const Icon(Icons.restart_alt),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '$round',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                        ),
                      ),
                      const Text(
                        '/4',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                        ),
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      Text(
                        '$goal',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                        ),
                      ),
                      const Text(
                        '/12',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'ROUND',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Text(
                        'GOAL',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
