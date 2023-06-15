import 'package:flutter/material.dart';
import 'package:ui_clone/widgets/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 60,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 290,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'MONDAY 16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'TODAY',
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '·',
                          style: TextStyle(
                            color: Colors.purple[600],
                            fontSize: 50,
                          ),
                        ),
                        const Flexible(
                          child: Text(
                            '17 18 19 20',
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white30,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const CurrencyCard(
                  name1: 'DESIGN',
                  name2: 'MEETING',
                  offset: Offset(0, 0),
                  bgc: Colors.yellow,
                  day1: '30',
                  day2: '20',
                  month1: '11',
                  month2: '12',
                  val1: 'ALEX',
                  val2: 'HELENA',
                  val3: 'NANA',
                  val4: '',
                  bold1: false,
                  bold2: false,
                  bold3: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  name1: 'DAILY',
                  name2: 'PROJECT',
                  offset: Offset(0, 0),
                  bgc: Color.fromARGB(255, 160, 65, 255),
                  day1: '35',
                  day2: '10',
                  month1: '12',
                  month2: '14',
                  val1: 'ME',
                  val2: 'RICHARD',
                  val3: 'CIRY',
                  val4: '+4',
                  bold1: true,
                  bold2: false,
                  bold3: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  name1: 'WEEKLY',
                  name2: 'PLANING',
                  offset: Offset(0, 0),
                  bgc: Color.fromARGB(255, 195, 255, 65),
                  day1: '00',
                  day2: '30',
                  month1: '15',
                  month2: '16',
                  val1: 'DEN',
                  val2: 'NANA',
                  val3: 'MARK',
                  val4: '',
                  bold1: false,
                  bold2: false,
                  bold3: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
