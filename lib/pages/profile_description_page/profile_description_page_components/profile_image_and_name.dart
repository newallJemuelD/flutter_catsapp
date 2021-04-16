import 'package:flutter/material.dart';

import 'package:cats_app/models/cats_profile.dart';
import 'package:cats_app/styles/styles.dart';

class ProfileImageAndName extends StatelessWidget {
  const ProfileImageAndName({
    Key key,
    @required this.catsProfile,
  }) : super(key: key);

  final CatsProfile catsProfile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(catsProfile.image),
                fit: BoxFit.fill,
              ),
            )),
        Positioned(
          top: 280,
          child: Container(
            height: 100,
            width: 310,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: ContainerBorder.primaryContainer,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 3.0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  catsProfile.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(catsProfile.breedName),
                    Spacer(),
                    Text('${catsProfile.age} years old'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}