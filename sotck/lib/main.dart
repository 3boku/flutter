import 'package:flutter/material.dart';
import 'package:sotck/BluetothPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});
  void _onBlutoothTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const BluetoothPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '23.4C',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '73%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 230,
            ),
            GestureDetector(
              onTap: () => _onBlutoothTap(context),
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
      ),
    );
  }
}
