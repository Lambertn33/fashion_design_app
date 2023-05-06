import 'package:fashion_design_app/components/card/cardbody.dart';
import 'package:fashion_design_app/components/card/cardheader.dart';
import 'package:fashion_design_app/components/card/cardimages.dart';
import 'package:fashion_design_app/components/photoslider.dart';
import 'package:fashion_design_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: const PhotoSlider(),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(15.0),
            color: Constants.lightColor,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              width: double.infinity,
              height: 450,
              child: Expanded(
                child: Column(children: [
                  const CardHeader(),
                  const SizedBox(height: 4,),
                  const CardBody(),
                  const SizedBox(height: 4,),
                  const CardImages(),
                ]),
              ),
            ),
          ),
        ), 
        
      ],
    );
  }
}
