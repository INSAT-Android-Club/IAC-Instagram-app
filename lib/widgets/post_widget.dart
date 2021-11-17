import 'package:flutter/material.dart';
import 'package:insta/Models/post.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.post.user.pic),
                    ),

          
                  ),
                  Text(
                    widget.post.user.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Image.asset('assets/more.png')
            ],
          ),
        ),
        Container(
          height: 450,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth, image: AssetImage('assets/car.png'))),
        ),
      ],
    );
  }
}
