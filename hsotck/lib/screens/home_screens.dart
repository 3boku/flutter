import 'package:flutter/material.dart';
import 'package:hsotck/screens/blutooth_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BluetoothPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Stock',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Holm',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                '스톡홀름',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 130,
          ),
          Container(
            width: 285,
            height: 285,
            color: Colors.grey[600],
          ),
          const SizedBox(
            height: 160,
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: Text(
              '아두이노 연결',
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
