import 'package:flutter/material.dart';
import 'package:your_project_name/screens/BluetoothPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void _onPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BlutoothPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              children: [
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
            SizedBox(
              height: 230,
            ),
            GestureDetector(
              onTap: () => _onPressed(context),
              child: OutlinedButton(
                onPressed: () => _onPressed(context),
                child: Text(
                  '아두이노 연결',
                  style: TextStyle(
                    color: Colors.blue[200],
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class BluetoothPage extends StatefulWidget {
//   @override
//   State<BluetoothPage> createState() => _BluetoothPageState();
// }

// class _BluetoothPageState extends State<BluetoothPage> {
//   @override
//   Widget build(BuildContext context) {
//     // 블루투스 연결 페이지 구현
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bluetooth Page'),
//       ),
//       body: Center(
//         child: Text('Bluetooth Page'),
//       ),
//     );
//   }
// }
