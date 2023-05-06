import 'package:fashion_design_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class PhotoSlider extends StatefulWidget {
  const PhotoSlider({super.key});

  @override
  State<PhotoSlider> createState() => _PhotoSliderState();
}

class _PhotoSliderState extends State<PhotoSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      scrollDirection: Axis.horizontal,
      children: [
        photoSliderElement(
            '${Constants.imagesPath}/fashion_1.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_2.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_3.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_4.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_5.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_1.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_2.jpg', Constants.logoPath),
        const SizedBox(
          width: 12,
        ),
        photoSliderElement(
            '${Constants.imagesPath}/fashion_3.jpg', Constants.logoPath),
      ],
    );
  }
}

Column photoSliderElement(String imagePath, String logoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(46),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 12,
      ),
      Container(
        alignment: Alignment.center,
        height: 25,
        width: 70,
        decoration: BoxDecoration(
          color: Constants.mainColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: const Text('Follow', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),),
      )
    ],
  );
}
