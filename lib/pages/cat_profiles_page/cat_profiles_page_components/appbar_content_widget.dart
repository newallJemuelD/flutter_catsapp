import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Location",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.location_on,
                color: Colors.green[700],
              ),
            ),
            Text(
              "Kyiv,",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              " Ukraine",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
