import 'package:flutter/material.dart';
import 'package:insta/Models/comment.dart';
import 'package:insta/Models/post.dart';
import 'package:insta/Models/user.dart';
import 'package:insta/widgets/post_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Post post = new Post(
      user: User(
          name: "Ruffles",
          pic: "assets/ruffles.png",
          description: "description"),
      pictures: ["assets/car.png"],
      comments: [],
      likes: 50,
      shares: 10);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Container(
                //width: 500,
                child: PostWidget(
                  post: post,
                ),
              ),
            ),
          ),
        ));
  }
}
