import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  String imageURL;
  String display_text;
// u can see i created a class with two string variables and a construction
// dont care about the key for now just focus on the required keyword wich means
// WE HAVE TO assign this variable meaning we guarantee that this variable will
// not be null
  StoryWidget({Key? key, required this.imageURL, required this.display_text})
      : super(key: key);
//if u didint understand how did i do the border of the story try drawing on papaer
//following along with my code it's a great way to understand widgets and how flutter works
// btw this is not the best way to do this border but there are widgets and features we didint
// discuss in the workshops and are kind of advanced so maybe we ll check them out another time
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            //linear gradient means that the color of the container will be a gradient
            //( a color that slowly fades away into another color it takes the list of
            // colors that it requires

            gradient: LinearGradient(colors: [
              Color(0xffDE0046),
              Color(0xffF7A34B),
            ]),
            //we can change the shape of the container with the shape property it can take
            // a circle or a rectange
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imageURL),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(display_text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'SF',
              fontSize: 11.5,
            ))
      ],
    );
  }
}
