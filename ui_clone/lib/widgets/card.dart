import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name1, name2, month1, month2, day1, day2, val1, val2, val3, val4;
  final bool bold1, bold2, bold3;
  final Offset offset;
  final Color bgc;
  const CurrencyCard({
    super.key,
    required this.name1,
    required this.name2,
    required this.bgc,
    required this.offset,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.month1,
    required this.month2,
    required this.day1,
    required this.day2,
    required this.bold1,
    required this.bold2,
    required this.bold3,
    required this.val4,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgc,
          borderRadius: BorderRadius.circular(25),
        ),
        child: SizedBox(
          height: 210,
          width: 600,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                    width: 50,
                  ),
                  Text(
                    month1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    day1,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 0.4,
                    height: 30,
                    color: Colors.black,
                  ),
                  Text(
                    month2,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    day2,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    Text(
                      name1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      name2,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 53,
                        ),
                        Text(
                          val1,
                          style: TextStyle(
                            color: bold1 ? Colors.black : Colors.black38,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                          width: 30,
                        ),
                        Text(
                          val2,
                          style: TextStyle(
                            color: bold2 ? Colors.black : Colors.black38,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                          width: 30,
                        ),
                        Text(
                          val3,
                          style: TextStyle(
                            color: bold3 ? Colors.black : Colors.black38,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                          width: 30,
                        ),
                        Text(
                          val4,
                          style: TextStyle(
                            color: bold2 ? Colors.black : Colors.black38,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
