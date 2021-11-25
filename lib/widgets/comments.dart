// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      width: size.width,
      // text fields are a way to store texts the user can write down
      // we havent tdone that yet we just did the design part but we can definitely
      // do that using controllers
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            hintText: 'Add comment ...',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12.5,
              fontFamily: 'SF',
              fontStyle: FontStyle.normal,
            ),
            suffixIcon: Container(
              width: 100,
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.face),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.face_retouching_natural_sharp),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            icon: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('assets/pictures/Ruffles.png'))),
      ),
    );
  }
}
