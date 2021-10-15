import 'package:flutter/material.dart';

import '../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCards(
            Image: 'assets/images/bottom_img_1.png',
            onPressed: () {},
          ),
          FeaturedPlantCards(
            Image: 'assets/images/bottom_img_2.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCards extends StatelessWidget {
  const FeaturedPlantCards({
    Key? key,
    required this.Image,
    required this.onPressed,
  }) : super(key: key);
  final String Image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Image),
            )),
      ),
    );
  }
}
