import 'package:flutter/material.dart';
import 'package:fashion_design_app/helpers/constants.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46),
                  image: DecorationImage(
                      image:
                          AssetImage('${Constants.imagesPath}/fashion_3.jpg'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Annick Mariah',
                  style: TextStyle(
                      fontSize: 16,
                      color: Constants.mainColor,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  'Few mins ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: Constants.mainColor,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        Icon(
          Icons.more_vert,
          color: Constants.mainColor,
        )
      ],
    );
  }
}
