// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop4/widgets/post.dart';
import 'package:workshop4/widgets/story.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/pictures/IG logo.png'),
        elevation: 0,
        actions: [
          Image.asset(
            'assets/icons/add.png',
          ),
          Image.asset('assets/icons/heart.png'),
          Image.asset('assets/icons/messenger.png'),
        ],
      ),
      // i used a list view so even if the content of the app is bigger than the height of the device
      // we would have a scrollable content and we wont run into size issuers try removing it see what happens
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // so here i created a class that takes a the url image we wanna show up and
                  // the text we wanna show at the button, i did this so we dont have to copy paste
                  // my code and that leads to redundant code (that means basically copy pasted code which
                  // makes ur code less readable and so long for no reason)
                  StoryWidget(
                    imageURL: 'assets/pictures/Ruffles.png',
                    display_text: 'Your Story',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  StoryWidget(
                    imageURL: 'assets/pictures/bambi.png',
                    display_text: 'HypeSun_98',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  StoryWidget(
                    imageURL: 'assets/pictures/daniel.png',
                    display_text: 'KarolBary',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  StoryWidget(
                    imageURL: 'assets/pictures/jose.png',
                    display_text: 'Waggles',
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 0.5,
            height: 0,
          ),
          Post()
        ],
      ),
    );
  }
}
