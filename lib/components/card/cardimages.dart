import 'package:flutter/material.dart';
import 'package:fashion_design_app/helpers/constants.dart';

class CardImages extends StatefulWidget {
  const CardImages({super.key});

  @override
  State<CardImages> createState() => _CardImagesState();
}

class _CardImagesState extends State<CardImages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image:
                            AssetImage('${Constants.imagesPath}/fashion_2.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  '${Constants.imagesPath}/fashion_2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  '${Constants.imagesPath}/fashion_3.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                )),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 25,
              decoration: BoxDecoration(
                  color: Constants.mainColor,
                  borderRadius: BorderRadius.circular(12)),
              child: const Text('# Hashtag 1', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),),
            ),
            const SizedBox(width: 4,),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 25,
              decoration: BoxDecoration(
                  color: Constants.mainColor,
                  borderRadius: BorderRadius.circular(12)),
              child: const Text('# Hashtag 2', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),),
            ),
          ],
        )
      ],
    );
  }
}
