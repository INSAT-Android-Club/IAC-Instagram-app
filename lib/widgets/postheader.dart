import 'dart:ffi';

import 'package:flutter/material.dart';

class Postheader extends StatelessWidget {
  const Postheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/pictures/Ruffles.png'),
          ),
          SizedBox(
            width: 9,
          ),
          Text(
            'Ruffles',
            style: TextStyle(
                //in the textstyles I follow what was written in the figma file as well as all the padding and size box values
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontFamily: 'SF',
                fontSize: 12,
                fontWeight: FontWeight.w700),
          ),
          // I used spacer to push my next widget to the end of the row
          Spacer(),
          Image.asset('assets/icons/more.png'),
          SizedBox(
            width: 11,
          )
        ],
      ),
    );
  }
}
