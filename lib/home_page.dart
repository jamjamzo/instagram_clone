import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/coffee&donuts.jpeg',
      'assets/images/IMG_4239.JPG',
      'assets/images/IMG_4476.jpeg',
      'assets/images/IMG_4344.JPG',
      'assets/images/IMG_4386.JPG',
      'assets/images/IMG_4442.jpeg',
      'assets/images/IMG_0339.jpeg',
      'assets/images/IMG_4332.JPG',
      'assets/images/IMG_4245.JPG',
      'assets/images/IMG_0348.jpeg',
      'assets/images/IMG_0325.jpeg',
      'assets/images/IMG_0333.jpeg',
    ];
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
          'assets/Zostagram.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: ((context, index) {
          String image = images[index];
          return Feed(
            imageFiles: image,
          );
        }),
      ),
    );
  }
}
