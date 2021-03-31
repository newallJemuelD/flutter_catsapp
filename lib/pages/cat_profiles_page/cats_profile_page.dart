import 'package:flutter/material.dart';
import 'package:cats_app/models/cats_profile.dart';
import 'cat_profiles_page_components/appbar_content_widget.dart';
import 'cat_profiles_page_components/catprofiles_list_widget.dart';

class CatsProfilePage extends StatefulWidget {
  @override
  _CatsProfilePageState createState() => _CatsProfilePageState();
}

class _CatsProfilePageState extends State<CatsProfilePage> {
  final CatsProfileList catsProfile = CatsProfileList(
    catsProfileList: [
      CatsProfile(
        name: 'Soap',
        image: 'images/abyss_cat.jpg',
        breedName: 'Abyssinian cat',
        age: 2,
        distance: 2.5,
        ownerName: 'Newall Jemuel',
        adoptionReason:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ),
      CatsProfile(
        name: 'Sudalai',
        image: 'images/b_shorthair.jpg',
        breedName: 'British Shorthair',
        age: 1,
        distance: 3,
        ownerName: 'Allinall Jemuel',
        adoptionReason:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ),
      CatsProfile(
        name: 'Mongoose',
        image: 'images/bengal_cat.jpg',
        breedName: 'Bengal cat',
        age: 2,
        distance: 5.2,
        ownerName: 'Allnew Jemuel',
        adoptionReason:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ),
      CatsProfile(
        name: 'Vengoose',
        image: 'images/norweigian_cat.jpg',
        breedName: 'Norweigian cat',
        age: 3,
        distance: 6.7,
        ownerName: 'allall Jemuel',
        adoptionReason:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 100,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            backgroundColor: Colors.white,
            title: AppbarContentWidget(),
            actions: [
              Padding(
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/profile_dp.jpg'),
                ),
              )
            ],
          ),
          body: CatprofilesListWidget(catsProfile: catsProfile),
        ),
      ),
    );
  }
}
