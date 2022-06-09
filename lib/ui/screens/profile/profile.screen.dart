import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: [
      Flexible(
        child: Column(children: [
          CircleAvatar(radius: 80, backgroundImage: AssetImage(''))
        ]),
      ),
    ]);
  }
}
