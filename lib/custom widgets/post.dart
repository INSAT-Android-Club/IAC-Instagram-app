import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop4/custom%20widgets/comments.dart';
import 'package:workshop4/custom%20widgets/postheader.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this line is for storing the size (width and height) of the phone that the user is using
    // for us developers it represents the emulator's size (it s basically the phone we re using)
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Postheader(),
        Image.asset(
          'Assets/Pictures/morgan.png',
          width: size.width,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 13,
            ),
            Image.asset('Assets/Icons/heart.png'),
            SizedBox(
              width: 19,
            ),
            Icon(CupertinoIcons.bubble_left),
            SizedBox(
              width: 19,
            ),
            Image.asset('Assets/Icons/share.png'),
            SizedBox(
              width: 54,
            ),
            Container(
              width: 8,
              height: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
            SizedBox(
              width: 6,
            ),
            //i iterated 4 times over the widget to show it up 3 times side by side again to not write redundant code
            for (int i = 0; i < 3; i++)
              Container(
                margin: EdgeInsets.only(right: 6),
                width: 8,
                height: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
            Spacer(),
            Image.asset('Assets/Icons/bookmark.png'),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '100 Likes',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                fontFamily: 'SF',
                fontStyle: FontStyle.normal),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          // Richtext!!! awesome another widget it's to show texts who have diffrent textstyles
          // for more information as i said please check out the youtube channel flutter weekly widget
          // or check out the documentation in flutter.dev if u re not that much into watching videos
          child: RichText(
            text: TextSpan(
              // this textstyle is common for all the textspans
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  fontFamily: 'SF',
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
              children: [
                TextSpan(
                  text: 'userna  ',
                ),
                //here i overwrited the fontweight but all the other properties are still the smae
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: 'more',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Comments(),
      ],
    );
  }
}
