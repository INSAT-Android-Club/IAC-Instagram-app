import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Go back',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
