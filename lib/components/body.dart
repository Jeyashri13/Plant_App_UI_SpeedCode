// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/featured_plants.dart';
import 'package:plant_app/components/header_with_search_box.dart';
import 'package:plant_app/components/header_with_search_box.dart';
import 'package:plant_app/components/recommends_plants.dart';
import 'package:plant_app/components/title_with_more_btns.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            onPressed: () {},
            title: 'Recomended',
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", onPressed: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
