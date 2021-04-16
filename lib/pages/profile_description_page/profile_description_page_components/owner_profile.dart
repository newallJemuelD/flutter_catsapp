import 'package:cats_app/models/cats_profile.dart';
import 'package:flutter/material.dart';


class OwnerProfile extends StatelessWidget {
  const OwnerProfile({
    Key key,
    @required this.catsProfile,
  }) : super(key: key);

  final CatsProfile catsProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage('images/profile_dp.jpg'),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  catsProfile.ownerName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Owner'),
              ],
            ),
          ),
          Spacer(),
          Text('Jan 25, 2021'),
        ],
      ),
    );
  }
}