import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.paperplane,
              color: Colors.black,
            ),
          )
        ],
        title: Image.asset(
          'assets/instagram_logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/coffee&donuts.jpeg',
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // 좋아요
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // 설명
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "My sister and I went to a cafe which is able to be with a puppy! To be honest, the donuts are awesome!"),
          ),
          // 날짜
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "9th September",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
