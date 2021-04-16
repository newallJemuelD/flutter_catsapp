import 'package:cats_app/models/cats_profile.dart';
import 'package:cats_app/pages/profile_description_page/profile_description_page_components/adoption_action.dart';
import 'package:cats_app/pages/profile_description_page/profile_description_page_components/owner_profile.dart';
import 'package:cats_app/pages/profile_description_page/profile_description_page_components/profile_image_and_name.dart';
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
                ProfileImageAndName(catsProfile: catsProfile),
                Column(
                  children: [
                    OwnerProfile(catsProfile: catsProfile),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        catsProfile.adoptionReason,
                      ),
                    ),
                    AdoptionAction(),
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






