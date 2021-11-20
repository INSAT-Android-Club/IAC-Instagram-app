// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:workshop4/Pages/feed.dart';
import 'package:workshop4/Pages/profile.dart';
import 'package:workshop4/Pages/search.dart';
import 'package:workshop4/Pages/shop.dart';
import 'package:workshop4/Pages/video.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        // for the page view we call all the pages we wanna show up side by side for the time been dont
        // worry so much about the controller and the fucntions ill explain them another time just focus
        // on the design of the feed page for now (and a bit on the navigationbat)
        controller: controller,
        onPageChanged: (i) {
          index = i;
          setState(() {});
        },
        children: [
          const Feed(),
          Search(),
          Videopage(),
          Shop(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          index = i;
          controller.jumpToPage(i);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('Assets/Icons/Home.png'), label: 'home'),
          BottomNavigationBarItem(
              icon: Image.asset('Assets/Icons/Search.png'), label: 'search'),
          BottomNavigationBarItem(
              icon: Image.asset('Assets/Icons/Reels.png'), label: 'video'),
          BottomNavigationBarItem(
              icon: Image.asset('Assets/Icons/Shop.png'), label: 'shopping'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('Assets/Pictures/Ruffles.png')),
              label: 'shopping'),
        ],
      ),
    );
  }
}
