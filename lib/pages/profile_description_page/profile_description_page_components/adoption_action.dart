import 'package:flutter/material.dart';

import 'package:cats_app/styles/styles.dart';


class AdoptionAction extends StatelessWidget {
  const AdoptionAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: ContainerBorder.secondaryContainer,
            ),
            child: Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: ContainerBorder.secondaryContainer,
            ),
            child: Text(
              'Adoption',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}