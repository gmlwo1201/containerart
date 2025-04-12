import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = List.generate(100, (i) => i).toList();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaData = MediaQuery.of(context);
    var screenWidth = mediaData.size.width;
    var screenHeight = mediaData.size.height;

    return Scaffold(

      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth * 0.5,
                height: screenHeight * 0.5,
                color: Colors.red,
              ),
              Column(
                children: [
                  Container(
                    width: screenWidth * 0.5,
                    height: screenHeight * 0.25,
                    color: Colors.blue,
                  ),
                  Row(
                    children: [
                      Container(
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.25,
                        color: Colors.black,
                      ),
                      Container(
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.25,
                        color: Colors.orange,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            width: screenWidth * 1,
            height: screenHeight * 0.5,
            color: Colors.yellow,
          ),
        ],
      ),

    );
  }
}
