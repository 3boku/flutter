import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text("금호동 3가",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
            ],
          ),
          actions: const [
            Icon(Icons.search_rounded, size: 30,),
            SizedBox(width: 20,),
            Icon(Icons.menu, size: 30,),
            SizedBox(width: 20,),
            Icon(Icons.notifications_none, size: 30,),
            SizedBox(width: 20,),
          ],
        ),
        body: Container(
          height: 140,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(width: 20,),
              Image(
                image: AssetImage("assets/img.png"),
                width: 150,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("고퍼", style: TextStyle(fontSize: 30),),
                  Text("성동구 행당동 - 끌올 10분 전"),
                  Text("210,000원", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_outline),
                        Text("4")
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
