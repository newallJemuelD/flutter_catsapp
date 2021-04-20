import 'package:flutter/material.dart';

import 'package:cats_app/models/cats_profile.dart';
import 'package:cats_app/pages/profile_description_page/profile_description_page.dart';
import 'package:cats_app/styles/styles.dart';

class CatprofilesListWidget extends StatelessWidget {
  const CatprofilesListWidget({
    Key key,
    @required this.catsProfile,
  }) : super(key: key);

  final CatsProfileList catsProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView.builder(
        itemCount: catsProfile.catsProfileList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileDescriptionPage(),
                  settings: RouteSettings(
                    arguments: catsProfile.catsProfileList[index],
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(20),
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ContainerBorder.primaryContainer,
              ),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: ContainerBorder.primaryContainer,
                      image: DecorationImage(
                        image: AssetImage(
                            catsProfile.catsProfileList[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          catsProfile.catsProfileList[index].name,
                          style: HeaderFonts.primaryText,
                        ),
                        Text(catsProfile.catsProfileList[index].breedName),
                        Text(
                          '${catsProfile.catsProfileList[index].age} years old',
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: IconsColor.primaryColor,
                            ),
                            Text(
                              'Distance ${catsProfile.catsProfileList[index].distance}km',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
