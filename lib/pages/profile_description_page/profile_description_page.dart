import 'package:cats_app/models/cats_profile.dart';
import 'package:flutter/material.dart';

class ProfileDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CatsProfile catsProfile = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
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
                          borderRadius: BorderRadius.circular(20),
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
                ),
                Column(
                  children: [
                    Container(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        catsProfile.adoptionReason,
                      ),
                    ),
                    Container(
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
                              borderRadius: BorderRadius.circular(20),
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
                              borderRadius: BorderRadius.circular(20),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
